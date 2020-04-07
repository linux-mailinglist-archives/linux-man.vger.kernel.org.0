Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EFC0C1A0C43
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 12:52:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726687AbgDGKwM (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 06:52:12 -0400
Received: from mx01-muc.bfs.de ([193.174.230.67]:54672 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726591AbgDGKwM (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 7 Apr 2020 06:52:12 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id B2341203BD;
        Tue,  7 Apr 2020 12:52:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1586256728;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xXgIbyaF6OMEEM2pi3338SKFz8Ib5unc1abqFH4KmtM=;
        b=NUO0g/n8Dne0VnC0JSHcL3zixn2N0cdOJ+g3dG2dfhd6OL+EM0BT04usRc2ezOXRLKsIUR
        epRUBGtCXaqK5o44AFo28ceuj1jK8siNveYEvTut44HM/HKhLwH7siL9PkYMvxOzSj5KRv
        oU19xHZJlwpgwSq6EQvQKRsd+3pPJ+SX+IJ5uw7e/WMYlp5NyPQaPQ94oeWNXknZZoGs1h
        aiYO5qMkCIPGLtgNlTWRlcI65/bicZBRz9qZZ24j+Js6OxahfhBSJkUNwHI8IC9UERS0Jd
        oehZEKXQLwJ399bWLC8PTS65GJ/hI+GSTGaHUKUJlYYD9YF8XpcbWjKLpP/RMg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Tue, 7 Apr 2020
 12:52:08 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Tue, 7 Apr 2020 12:52:08 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Andrew Micallef <andrew.micallef@live.com.au>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: Suggestion for edit
Thread-Topic: Suggestion for edit
Thread-Index: AQHWDI/Fyl47qCQDb0ilEbBf8oBdT6htPR5ygAAHsu2AACO7F4AAEgDX
Date:   Tue, 7 Apr 2020 10:52:07 +0000
Message-ID: <cbe041d18e2340d9a82a575cf32db44c@bfs.de>
References: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>,<MN2PR04MB61571362350C94A82F545152B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>,<2d4de4cc1c3b453199e48528095f7626@bfs.de>,<MN2PR04MB615789FF54F31389096E584BB9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB615789FF54F31389096E584BB9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.49
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spamd-Result: default: False [-0.49 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[live.com.au];
         MIME_GOOD(-0.10)[text/plain];
         DKIM_SIGNED(0.00)[];
         RCPT_COUNT_TWO(0.00)[2];
         FREEMAIL_TO(0.00)[live.com.au,vger.kernel.org];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.49)[79.72%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

the posix page is more direct about that.

"The sign of a non-zero return value shall be determined by the sign of the=
 difference between the values of the first  pair  of     bytes (both inter=
preted as type unsigned char) that differ in the strings being compared."

re,
 wh
________________________________________
Von: Andrew Micallef <andrew.micallef@live.com.au>
Gesendet: Dienstag, 7. April 2020 11:45:03
An: Walter Harms; linux-man@vger.kernel.org
Betreff: Re: Suggestion for edit

Hi Walter


Actually that new phrasing on the last sentence is much clearer. I was scra=
tching my head over what it meant for a string to be less than (or greater =
than) another string.

Cheers
Andrew




From: Walter Harms <wharms@bfs.de>

Sent: Tuesday, 7 April 2020 7:17 PM

To: Andrew Micallef <andrew.micallef@live.com.au>; linux-man@vger.kernel.or=
g <linux-man@vger.kernel.org>

Subject: AW: Suggestion for edit




hi Andrew, i have to admit that i dropped over the last sentence. And it sh=
ould be *very* clear what the return means,

ehre my idea:



If both strings are equal the function returns 0.

Otherwises it returns the differences between the last compared characters.



The last feature is important for sorting. I never found a good wording for=
 that.



re,

 wh







________________________________________

Von: linux-man-owner@vger.kernel.org <linux-man-owner@vger.kernel.org> im A=
uftrag von Andrew Micallef <andrew.micallef@live.com.au>

Gesendet: Dienstag, 7. April 2020 09:07:50

An: linux-man@vger.kernel.org

Betreff: Fw: Suggestion for edit



Hi,





I'd like to suggest an edit to the description of `strcmp` in the standard =
C library man page.

I found this description to be kind of confusing, and think the language co=
uld be a bit more

straight forward.







 At present the description reads as follows:



The strcmp() function compares the two strings s1 and s2.  The locale

       is not taken into account (for a locale-aware comparison, see

       strcoll(3)).  It returns an integer less than, equal to, or greater

       than zero if s1 is found, respectively, to be less than, to match, o=
r

       be greater than s2.



I am suggesting the following edits:



The strcmp() function compares the two strings s1 and s2.  The locale

       is not taken into account (for a locale-aware comparison, see

       strcoll(3)).  It returns an integer, which is 0 if the strings

       match. Otherwise, a negative integer indicates s1 is less than s2,

       while a positive integer indicates s1 is greater than s2.





Regards

Andrew



