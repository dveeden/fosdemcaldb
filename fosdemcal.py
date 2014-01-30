#!/usr/bin/env python
# Made for Python3
import requests
import icalendar
import mysql.connector

def cleanhtml(text):
    text = text.replace('<p>','')
    text = text.replace('</p>','')
    text = text.strip(' ')
    return text

def url2db(url):
    conn = mysql.connector.connect(user='msandbox', password='msandbox', host='localhost', port=5702, database='fosdemcal')
    cursor = conn.cursor()
    add_sql = ("INSERT INTO calendar(calname, summary, dtstart, dtend, location, url, description) VALUES(%s, %s, %s, %s, %s, %s, %s)")
    
    
    a = requests.get(url)
    
    if a.status_code == 200:
        ical = a.text
        cal = icalendar.Calendar.from_ical(ical)
        calname = cal.get('X-WR-CALNAME')
        print('==== Calendar {calname} ===='.format(calname=calname))
        for event in cal.subcomponents:
            esum = event.get('SUMMARY')
            edesc = event.get('DESCRIPTION')
            eloc = event.get('LOCATION')
            eurl = event.get('URL')
            dtstart = event.get('DTSTART').dt
            dtend = event.get('DTEND').dt
            eatt = event.get('ATTENDEE')
            print('SUMMARY:  {esum}\nTIME:     {dtstart} - {dtend}\nLOCATION: {eloc}\n'
                  'URL:      {eurl}\nDESCRIPTION:\n{edesc}\n'.format(
                  esum=esum, eloc=eloc, eurl=eurl, edesc=cleanhtml(edesc), dtstart=dtstart, dtend=dtend))
            add_data = (str(calname), str(esum), dtstart, dtend,  str(eloc), str(eurl), str(cleanhtml(edesc)))
            cursor.execute(add_sql, add_data)
    
    conn.commit()
    cursor.close()

if __name__ == '__main__':
    tracks = ('mysql', 'python')
    baseurl = 'https://fosdem.org/2014/schedule/track/'
    for track in tracks:
        url = '{baseurl}{track}.ics'.format(baseurl=baseurl, track=track)
        url2db(url)
