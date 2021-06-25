Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF7FA3B41B9
	for <lists+linux-man@lfdr.de>; Fri, 25 Jun 2021 12:33:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230496AbhFYKgT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 25 Jun 2021 06:36:19 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:45951 "EHLO mx02-sz.bfs.de"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S230379AbhFYKgS (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 25 Jun 2021 06:36:18 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx02-sz.bfs.de (Postfix) with ESMTPS id 634D6201E0;
        Fri, 25 Jun 2021 12:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1624617236;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=n9L/MWNUazGXPlaWK6vRk4vKn7D0sUlGpbneOEW4ZyM=;
        b=VFH1h1jU0ry03E/JgbYvc/Fmu290xHvQf0pxu7N96qcoJIoa5J/4/dAx81VmsubnGUjGJ2
        3zNc/HHzWM+JrLf3dSflqZWmHeTWVbtZTyZW1tfrDTmwaHmXiL4JYpvvI3ca2liSUYrzob
        3Vq7yCrfztPjUA9/+uHzqXIiALECjcaABOpGDIqH9vXvWw3OYCbwIW7vuHzWnrnc2aCWYG
        laL5VD7MoY3o4yAjsI0uMMTngw6k3SWN6ezSfBxI+/V/oJcT+xRBMz+NTlee3xmGEBEVD/
        66iqLZf1O9O3LAFBzryeV1rPknEyftF6/iF0f+l6kcl+Q2CeLAX8gF42boWkbA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2242.4; Fri, 25 Jun
 2021 12:33:55 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2242.008; Fri, 25 Jun 2021 12:33:55 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Nora Platiel <nplatiel@gmx.us>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: AW: execve(2) man page: "absolute pathname" inconsistency
Thread-Topic: execve(2) man page: "absolute pathname" inconsistency
Thread-Index: AQHXaTlpytZe7N3zH0O4wvxrdM9MGaskgwk2
Date:   Fri, 25 Jun 2021 10:33:55 +0000
Message-ID: <750acf642c3e4e79b782e72d5914c89d@bfs.de>
References: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
In-Reply-To: <trinity-131cbf9a-6570-4d3c-8b80-a808d1ad445a-1624567328724@3c-app-mailcom-bs07>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26240.007
x-tm-as-result: No-10--2.346400-5.000000
x-tmase-matchedrid: WRUq6WLYcS3RubRCcrbc5grcxrzwsv5u3dCmvEa6IiFVKNUgZ3luWs8O
        alpDJEQllUkoMluWRiu6lkhhsb0M/FK4l8RZlJB8lchF+IvkllMBDya2JbH/+sK+joM7FGIa/zS
        kYr7c6qCVJKM3Qs8zxYrfL2HvN1azs0l3lkboY0FIwW/KvkvzgvmoZ6x4ZgCU3unRG7yMq8XWo8
        EdIaYxorb+DhLaPWWHsdO2G/aiadypuCBV0HInTvU/U4uA7G4b0y2+na9n1vTxhd7OnOhlOkDBX
        EjB0wKBZ7hZrV4/9qwSfiDVXobPvZqr99QqClkPolVO7uyOCDU9kgdakpwcTaq9wgXVNwtgSiLc
        jcX7xz10U4rGHlQpbLpIE1gqGLSnxzpH9vijA/zw62PQq99HWUX+NKU+2Zr+hhmdaeajIBGroFB
        cRQad7vrvsV1TtS1AcYYQp9wkCWJQHcTsCEJLxnDa2KwSBkFn0FCm+/lyPSArxUs8Nw/2fvN+oA
        4oIb1dRMR9kQkhA0GVd67STdAe7ZFN+B8oJZ5aoBIBeify7bxM/K93vTp4vYFum2PEjqt1o8WMk
        QWv6iVJeFvFlVDkf46HM5rqDwqtjKMXzVIjnjqXjXhhXdQVtmb3APMdj5qp9ggHYzSxNZs9R2kJ
        As2FmQDLi2saJpDPOQIORSw9gcwDd5vOuUiSO9R+1kD55tn5KKz2OxxCkpzNG0L98j8bMvraKq/
        vKbWfY+pdIoZ/f0qMsMMl8n1mx5RMZUCEHkRt
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--2.346400-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26240.007
x-tm-snts-smtp: 0B3F0B109A1FF687B48A48FC02BA626AD181B9D586644594944BB618FB9611712000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spamd-Result: default: False [-9.02 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         TO_DN_SOME(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RSPAMD_URIBL(4.50)[gmx.us:email];
         FREEMAIL_ENVRCPT(0.00)[gmx.us,gmail.com];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         BAYES_HAM(-0.02)[53.38%];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmx.us,gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         SUSPICIOUS_RECIPS(1.50)[]
Authentication-Results: mx02-sz.bfs.de;
        none
X-Spam-Status: No, score=-9.02
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I guess there is a mixup between interpreter and  pathname.

All this is only vaild if the
flag is set to P (P - preserve-argv[0]) when you add a new
setting in  /proc/sys/fs/binfmt_misc/register
(any way to get the current setting ?)

the original wording from the kernel says:

Legacy behavior of binfmt_misc is to overwrite the original argv[0] with th=
e full path to the binary. When this flag is included, binfmt_misc will add=
 an argument to the argument vector for this purpose, thus preserving the o=
riginal argv[0]. e.g. If your interp is set to /bin/foo and you run blah (w=
hich is in /usr/local/bin), then the kernel will execute /bin/foo with argv=
[] set to ["/bin/foo", "/usr/local/bin/blah", "blah"]. The interp has to be=
 aware of this so it can execute /usr/local/bin/blah with argv[] set to ["b=
lah"].

re,
 wh
________________________________________
Von: Nora Platiel <nplatiel@gmx.us>
Gesendet: Donnerstag, 24. Juni 2021 22:42:08
An: mtk.manpages@gmail.com; alx.manpages@gmail.com
Cc: linux-man@vger.kernel.org
Betreff: execve(2) man page: "absolute pathname" inconsistency

WARNUNG: Diese E-Mail kam von au=DFerhalb der Organisation. Klicken Sie nic=
ht auf Links oder =F6ffnen Sie keine Anh=E4nge, es sei denn, Sie kennen den=
/die Absender*in und wissen, dass der Inhalt sicher ist.


Hello,
I'm reporting a problem with the execve(2) man page (see the "absolute path=
name" part):

> If the pathname argument of execve() specifies an interpreter
> script, then interpreter will be invoked with the following
> arguments:
>
>     interpreter [optional-arg] pathname arg...
>
> where pathname is the absolute pathname of the file specified as
>                       ^^^^^^^^^^^^^^^^^
> the first argument of execve(), and arg...  is the series of
> words pointed to by the argv argument of execve(), starting at
> argv[1].  Note that there is no way to get the argv[0] that was
> passed to the execve() call.

Then in the final example:

> $ ./execve ./script
> argv[0]: ./myecho
> argv[1]: script-arg
> argv[2]: ./script
> argv[3]: hello
> argv[4]: world

According to the description, argv[2] is supposed to be the *absolute pathn=
ame* of "./script" but it is not.
(In path_resolution(7), an absolute pathname is defined to be a pathname st=
arting with a '/' character.)

I tested the example with kernel 4.4.246 and the output is the same as the =
one in the man page (relative paths are preserved).
I don't know about newer kernels, but if I understand correctly, either the=
 "absolute pathname" wording is incorrect or the example is.
(In the latter case, perhaps the man page could also mention the change in =
behavior.)

The "absolute pathname" wording was introduced here:
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D60=
f16bf2fe6bd2d2d001d0a41936e778b1e7e3f6
https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=3D63=
059c4b527d0da73666da5ff29dcc902e219371

Regards,
NP

