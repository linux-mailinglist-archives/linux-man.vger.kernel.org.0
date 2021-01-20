Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8E6C2FD964
	for <lists+linux-man@lfdr.de>; Wed, 20 Jan 2021 20:23:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730348AbhATSq1 (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Wed, 20 Jan 2021 13:46:27 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:64338 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2390691AbhATRlG (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Wed, 20 Jan 2021 12:41:06 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id B145C20513
        for <linux-man@vger.kernel.org>; Wed, 20 Jan 2021 18:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1611164409;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=JMKE6jTbknI0Aq672FPQiJyOk5nRtdNndv1vl1kK/IQ=;
        b=AhoIUtTrlEG0ZGPvzP0yvddThRfvdJ/YSqrw57i966/CmQy2weNa5D4XUR7F3MMVSaSZv+
        YsyPBtXkFbdZOsQ1/tQgwz9BlmxxEHwx8nMqagkleC2Ig2tAUu0/9EAW2KSsOE80YS9k1E
        X6B68dIAAZoamtTywry3mVhHMRoRDKHvvF1SQs4NGgdJY83SFBR3/6OJV3r6/p7sRriurF
        n0QFnsSetPfrglMlJgfnrXzl0EnJcu1icWtDe2PEe02GAwMQzAbnOe5Doy3Paz2Sni4w9v
        N69/fKDnlJEPBXYblNQemOBYpuXkDDveVZEBWNbAV5kGwZLyg23llaMUPj578w==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2106.2; Wed, 20 Jan
 2021 18:40:09 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2106.002; Wed, 20 Jan 2021 18:40:09 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: sendfile() more defailed information ? anyone ?
Thread-Topic: sendfile() more defailed information ? anyone ?
Thread-Index: AQHW71NFSVY1EqEsRkyUp6pmxfz1tA==
Date:   Wed, 20 Jan 2021 17:40:08 +0000
Message-ID: <6e9e410d0e874053bed915ba2c31a74b@bfs.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-as-result: No-10--0.870200-5.000000
x-tmase-matchedrid: jbhEKUwG474I9V8p1Mx66RJmPIoQFzZ7PknazlXMVpV+SLLtNOiBhrLs
        vs6J0rHdIHWG7v5fy6u+D16olw+XFp7OKJfwqtGqqjZ865FPtppNeEQeLECUucnJhTYnTng9D3b
        LdMpm5wQnmfZ4t+ZoOiYYFf9AObeILCsl3h9gj1PYeXBrcJgL5Ka/FCTmDGQyaHvr9sOkYStl/Q
        xSCU7NR7at2I8muMKxfUmdwjQ7mYPZ1WIyNWqu67SlePUaQB97zPMyzZ3J7JUC/nuPl5P0FiqLU
        dvK5apr3gMlfwrQ6k6paNKvECOILD20c9qtr4UymS4eyDF9QUciC3XPiJxBKybATuyA+032uXjm
        1TeJXyznzlXMYw4XMD3Al4zalJpFJ0RPnyOnrZIq1gGpbSfcvz1qQZg6qfh6L2yL02Wjg2C4KlZ
        iRUhuXzgXiGBSh6jDFIIPmd92SrH6QfEMb3VEe9Evfmwd0xsLpuwf3KBTQXS2cgmqgVb1EJQrsl
        Z0y6ubFXlxct0HcO8ArGu66ikpiZhXaU3Y+sZq
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--0.870200-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25754.007
x-tm-snts-smtp: 00C2412078C61C5969B526A477C72060C3BA1F7D65F82BC509943F0135ADFFB02000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spam-Status: No, score=1.00
X-Spamd-Result: default: False [1.00 / 7.00];
         ARC_NA(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_ONE(0.00)[1];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         NEURAL_HAM(-0.00)[-1.000];
         TO_DN_EQ_ADDR_ALL(0.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         SUBJECT_ENDS_QUESTION(1.00)[];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.00)[11.03%]
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi List,
there was a discussion on the busybox-ml about a kernel-bug in sendfile().=
=20
<cite>
In 2.6.33.7, when used with a normal file as the output, it always
writes the data to offset 0 in the file.

That's fine if you only call it once and then close the output
fd. However, if you call it multiple times (as busybox 'cat' does when
copying multiple files), then you don't get the expected result. The
contents of the input files are not concatenated. Instead the contents
of each input file overwites the existing contents of the output file
starting at offset 0.
</cite>

these apache doc mentions more problems
https://httpd.apache.org/docs/2.4/mod/core.html#enablesendfile

It seems that the bug mentioned above is fixed but nobody seems to know whe=
n this was done.

IMHO this should be mentioned in the man page, but i lack detailed informat=
ion and time to research them.=20
I would like to encourage anyone who has information to  come forward so it=
 can be added to man page.

re,
 wh=
