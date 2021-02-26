Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 54B4C326627
	for <lists+linux-man@lfdr.de>; Fri, 26 Feb 2021 18:11:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230018AbhBZRLI (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 26 Feb 2021 12:11:08 -0500
Received: from mx01-sz.bfs.de ([194.94.69.67]:42394 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230014AbhBZRLG (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 26 Feb 2021 12:11:06 -0500
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 647DF208CE
        for <linux-man@vger.kernel.org>; Fri, 26 Feb 2021 18:10:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1614359420;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding;
        bh=7OxQtUWiPmRkjy+JmCcD/RKLaYfAhh7RFqTti6qZIGQ=;
        b=pLUU4vzVqba/1iYJPIUSFFHUTaJU5+WBzE/8aztj7Y+BBfFL9VH+Lj1f1nDtd4gWVRTNx6
        XpDOB+P7iFoXtG1z4ZQE3aSUGKAmALI/hhlNRLXcp6+BLwINm4WfBD2LZj0PYFOqRDJapb
        L99HT59geAtP38uYafj+QnJuFrjE4UGlmBDKkIX+NP1Lt2gKHsgOJsibhazcLF67RS6iK6
        U0sSX2D0hkKjoCKmFZ/g8LeNs8/DW6qJ7wupyzR7bViuZZDB6weRGNAB55Tf8WfXv9K9r9
        UWKxDz3xUUfuO1ISCobI+r3/5ZbCXSxT8RCZ3fQ3i1+5BGRh9wWz9/5AUgWdDg==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Fri, 26 Feb
 2021 18:10:19 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.002; Fri, 26 Feb 2021 18:10:19 +0100
From:   Walter Harms <wharms@bfs.de>
To:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>
Subject: bug in open(2) example
Thread-Topic: bug in open(2) example
Thread-Index: AQHXDGJC4qMmHtFWdkmIfrbiVI+T5Q==
Date:   Fri, 26 Feb 2021 17:10:19 +0000
Message-ID: <cea059cb5360482182409e9093e361cd@bfs.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.40]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-25998.001
x-tm-as-result: No-10--0.334000-5.000000
x-tmase-matchedrid: RrVTtS3YKT7RubRCcrbc5grcxrzwsv5u3dCmvEa6IiGoLZarzrrPmRUs
        Yg9U/g5Bm7e8kZMMIGHEJMpxSUqlW7NUVnqixiMO9u1rQ4BgXPJlTVVQf83+pJsoi2XrUn/JIq9
        5DjCZh0x2jkpctwKLBQtuKBGekqUpnH7sbImOEBRqCXdGi0I9GI9UpwzxP3/gKvFHVKUxPJ2o9q
        8vVT7BppBwI0+HBYSUuDfiT5yQ5OorB8vL0AHZOoKpoDFDA5Dmd1/lbhdPr/s1nv6xeee13ynUf
        1OLUa/w2Er57KI2kAgQpVBFLdTlCGA7bUFBqh2V
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--0.334000-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-25998.001
x-tm-snts-smtp: 0DFA6259C002BEAED7E7625CBE30CAAA68B942B7DB00582550A4889C1ACCB77F2000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-15.00 / 7.00];
         ARC_NA(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_ONE(0.00)[1];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         TO_DN_EQ_ADDR_ALL(0.00)[];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-0.00)[19.80%]
X-Spam-Status: No, score=-15.00
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi List,

the example for O_TMPFILE is broken:
  linkat(fd, NULL, AT_FDCWD, "/path/for/file", AT_EMPTY_PATH);
                     ^^^^^^
as the linkat(2) page says "Empty String" not NULL.

see:https://man7.org/linux/man-pages/man2/open.2.html

re,
 wh=
