Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3ADD2FCCF3
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 09:47:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731227AbhATIq6 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 03:46:58 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:12381 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1731173AbhATIqA (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 20 Jan 2021 03:46:00 -0500
X-Greylist: delayed 636 seconds by postgrey-1.27 at vger.kernel.org; Wed, 20 Jan 2021 03:45:58 EST
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id DDAAE2055C;
        Wed, 20 Jan 2021 09:34:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1611131675;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=rRJEOwfuQ4E+w70G87jhH4iARyzr4u3f3qCXeqqRCas=;
        b=X2TytkrtTfVMsHJYSEnMYa1Vje2sN0czviR05Gn0HuzsGjeHshFHoxRajGiV7wiuP2v+95
        uX0Gw/Do/3MczLeyNE4sIP1ihS3PLL2JjAp16HHSclRL+KFYqreR5p7gd5b2mS8o1YpV1t
        dHquJ7dtKGdkOeegHjLfn0D6uYNJdW52juAVSpAM8m5xWSH4e3N8rq1+NGz74UOXeXoiin
        FzAscX1IjCUDeXqUdUW+6nIBIi2GS1BD7qarlKsJttm0fpe5yDJUwVNqxT8n/yKNXmdJoc
        2mJx6jz5Waqwx2s87DwAu+R4me3O1ySx9HpsDNOcVXq14mjmBVxLVE2He/xDyA==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Wed, 20 Jan
 2021 09:34:35 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2106.002; Wed, 20 Jan 2021 09:34:35 +0100
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "roucaries.bastien@gmail.com" <roucaries.bastien@gmail.com>,
        =?iso-8859-1?Q?Bastien_Roucari=E8s?= <rouca@debian.org>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "Dr . Tobias Quathamer" <toddy@debian.org>,
        Vincent Lefevre <vincent@vinc17.net>
Subject: AW: [PATCH] environ.7: Document the valid values of pathnames for
 SHELL, PAGER and EDITOR/VISUAL
Thread-Topic: [PATCH] environ.7: Document the valid values of pathnames for
 SHELL, PAGER and EDITOR/VISUAL
Thread-Index: AQHW7qSNAlxlvOqlfEqDaxus6sLFU6owLTIT
Date:   Wed, 20 Jan 2021 08:34:35 +0000
Message-ID: <168066dbe8dd448dbe120abab8b8aa7c@bfs.de>
References: <20210119204459.401313-1-alx.manpages@gmail.com>
In-Reply-To: <20210119204459.401313-1-alx.manpages@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-as-result: No-10--10.961500-5.000000
x-tmase-matchedrid: 7RlxjwaqaMJwCp+Q9KpjpxvgzEPRJaDEWw/S0HB7eoMTiSW9r3PknMru
        gDwhJXcQhjRR0FGC8SFXo+50WYSM+I81yJsU3bpPiVJZi91I9JixT02+VRUpqWlDtkS9/ZRfazw
        bF220ijpxyRa8KazJblSJFz3iwkFqiR2f2cUDT3RSxYp8x/dFp3316REeU5CR78BlMFOIM5n2xQ
        sQEOrKwmzInwDQzcyxuO+QuGz9r7Zj3cEXcFAPHopHR9xEGhE1Msovp/h9OdEINpIFnbd6msc/+
        8UeRzDJO7feylS4tuTN8DUDk28g9d3aQrftNh+sB/XUnmGGOOoftukM6FmmNmKuDy0kKGx06n1G
        l4gVhHh4xS6ty9cuyuTPp2ifBOJBOQj4c5re/dOdVNZaI2n6/wVyeo9hM9SHaKyfWaPPzZ+49Eb
        irBnBPiQqHGGuCBCouF42qwhgjRssaaYlMvaOHPRUId35VCIe4kXtI5H3kJUiJScSUXv7vRhBvW
        gZlX+8585VzGMOFzA9wJeM2pSaRSAHAopEd76vC2MZtaBgeAkMjfT2MeWuGr3gbeBsJLW0p8y99
        Znj3d9HtZoFSiK9bA==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--10.961500-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-snts-smtp: E56261ACED53F1FDCF07DBF2D14E4B82EC759317BF27051FE139D224CAE3F6312000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spam-Level: *
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spam-Status: No, score=1.43
X-Spamd-Result: default: False [1.43 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         MID_RHS_MATCH_FROM(0.00)[];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         BAYES_HAM(-0.07)[62.44%];
         RCPT_COUNT_SEVEN(0.00)[7];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         FREEMAIL_CC(0.00)[gmail.com,debian.org,vger.kernel.org,vinc17.net];
         RCVD_COUNT_TWO(0.00)[2];
         SUSPICIOUS_RECIPS(1.50)[]
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

FYI:
i took a dive into busybox to see what is expected for SHELL there.
According to the code the value is used like the path in
struct passwd.  In the end the value was executed via execv.

I have to admit that i always use a absolute value and was curious.

jm2c,
 wh
________________________________________
Von: Alejandro Colomar <alx.manpages@gmail.com>
Gesendet: Dienstag, 19. Januar 2021 21:45:00
An: mtk.manpages@gmail.com
Cc: roucaries.bastien@gmail.com; Bastien Roucari=E8s; linux-man@vger.kernel=
.org; Dr . Tobias Quathamer; Vincent Lefevre; Alejandro Colomar
Betreff: [PATCH] environ.7: Document the valid values of pathnames for SHEL=
L, PAGER and EDITOR/VISUAL

From: Bastien Roucari=E8s <rouca@debian.org>

The environ(7) man page says:

       SHELL  The pathname of the user's login shell.

       PAGER  The user's preferred utility to display text files.

       EDITOR/VISUAL
              The user's preferred utility to edit text files.

but doesn't say whether the pathnames must be absolute or they can
be resolved using $PATH, or whether they can have options.

Note that at least for SHELL, this is not specified by POSIX.
This issue was raised in the Austin Group mailing-list, and the answer
is that "what constitutes a valid value for a platform
should be documented" [1].

Since OpenSSH assumes that $SHELL is an absolute pathname (when set),
it is supposed that the documentation should be:

       SHELL  The absolute pathname of the user's login shell.

For PAGER, POSIX says: "Any string acceptable as a command_string
operand to the sh -c command shall be valid."

For EDITOR, it does not need to be an absolute pathname since POSIX
gives the example:

  EDITOR=3Dvi fc

and since it is specified as "the name of a utility", It assumes that
arguments (options) must not be provided. Page 3013 about "more", it
is said: "If the last pathname component in EDITOR is either vi or ex,
[...]", thus again, it is assumed to be a pathname.

For VISUAL, POSIX says: "Determine a pathname of a utility to invoke
when the visual command [...]", thus it is also a pathname. It is not
clear whether the pathname must be absolute, but for consistency with
EDITOR, it will be resolved using $PATH.

[1] https://www.mail-archive.com/austin-group-l@opengroup.org/msg01399.html

Reported-by: Vincent Lefevre <vincent@vinc17.net>
Signed-off-by: Bastien Roucaries <rouca@debian.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man7/environ.7 | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/man7/environ.7 b/man7/environ.7
index 7d2bc5a86..b30f9a38e 100644
--- a/man7/environ.7
+++ b/man7/environ.7
@@ -113,16 +113,22 @@ The current working directory.
 Set by some shells.
 .TP
 .B SHELL
-The pathname of the user's login shell.
+The absolute pathname of the user's login shell.
 .TP
 .B TERM
 The terminal type for which output is to be prepared.
 .TP
 .B PAGER
 The user's preferred utility to display text files.
+Any string acceptable as a command_string operand to the
+.I sh -c
+command shall be valid.
 .TP
 .BR EDITOR / VISUAL
 The user's preferred utility to edit text files.
+Any string acceptable as a command_string operand to the
+.I sh -c
+command shall be valid.
 .\" .TP
 .\" .B BROWSER
 .\" The user's preferred utility to browse URLs. Sequence of colon-separat=
ed
--
2.30.0

