Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A67C31A0A01
	for <lists+linux-man@lfdr.de>; Tue,  7 Apr 2020 11:26:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727958AbgDGJ0V (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Tue, 7 Apr 2020 05:26:21 -0400
Received: from mx01-muc.bfs.de ([193.174.230.67]:39683 "EHLO mx01-muc.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726637AbgDGJ0V (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Tue, 7 Apr 2020 05:26:21 -0400
X-Greylist: delayed 545 seconds by postgrey-1.27 at vger.kernel.org; Tue, 07 Apr 2020 05:26:19 EDT
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-muc.bfs.de (Postfix) with ESMTPS id 20C1D203F2;
        Tue,  7 Apr 2020 11:17:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1586251033;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=G6hNuU4slWTn8oahJ5wEExQNPG02XmoB8Jje6N+6wuI=;
        b=StyKknjKEYxAksVuI0tD5R5QC7yfX4N6+sZnXc/+4lniV1OujBWdtu3Ik613D/KWqAQmqF
        iGzO8HVycKFKCq2pXqxnOp15EvMbSlZLTpCBv2IFjpdt4KERiepZpgaYIVxwGYWxADE64q
        52wxHxkuix/ux3Wd4CyZ4v/qUXhG0bUzx4YgIX5zAYXFHyz9ul+IHKadJJ0D3csD6kCabA
        bshE6wlJRFt9bV9V3xhFchHmGIjDI60vvGRlXYATdmbV8Jfx+zYMFpIZvjtejtvrlrQN5e
        EDimCi94XupRglXujG7CL8SmccbS45IrjRY0GxRSw97YDIpXrjaQpy6iLvOobg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Tue, 7 Apr 2020
 11:17:12 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%6]) with mapi id
 15.01.1913.005; Tue, 7 Apr 2020 11:17:12 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Andrew Micallef <andrew.micallef@live.com.au>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: Suggestion for edit
Thread-Topic: Suggestion for edit
Thread-Index: AQHWDI/Fyl47qCQDb0ilEbBf8oBdT6htPR5ygAAHsu0=
Date:   Tue, 7 Apr 2020 09:17:12 +0000
Message-ID: <2d4de4cc1c3b453199e48528095f7626@bfs.de>
References: <MN2PR04MB6157E89BBF15AD9D70DDEA48B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>,<MN2PR04MB61571362350C94A82F545152B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
In-Reply-To: <MN2PR04MB61571362350C94A82F545152B9C30@MN2PR04MB6157.namprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Status: No, score=-0.00
Authentication-Results: mx01-muc.bfs.de;
        none
X-Spamd-Result: default: False [-0.00 / 7.00];
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
         BAYES_HAM(-0.00)[13.34%]
Sender: linux-man-owner@vger.kernel.org
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

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

