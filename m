Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 84ECD2E32A8
	for <lists+linux-man@lfdr.de>; Sun, 27 Dec 2020 21:03:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726131AbgL0UCz (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Sun, 27 Dec 2020 15:02:55 -0500
Received: from mout.gmx.net ([212.227.15.15]:33935 "EHLO mout.gmx.net"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726067AbgL0UCz (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Sun, 27 Dec 2020 15:02:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
        s=badeba3b8450; t=1609099283;
        bh=SYgcpMVjtEA5/vJySrT3cI/EP2pRgMNpcDkwKG06+uM=;
        h=X-UI-Sender-Class:To:Cc:From:Subject:Date;
        b=W8Rtuj2AS3Ycavkridb9NdeRQ89249lS7g5kGmeEpy5+gehScrqrikvPg79GDhJFC
         FYJjLBkTYUm6ED/yCePZ1nulOZHbNeErP0cUt4pVpBKIiCabNgLUQmUu1bXeWuDC6R
         TqEOkenUXkgNa7icRaGOSISHtJz3yxp6rpuLpE6M=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.123.51] ([62.143.246.89]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1N7i8O-1jykUK3c5y-014oZr; Sun, 27
 Dec 2020 21:01:22 +0100
To:     "Michael Kerrisk (man-pages)" <mtk.manpages@gmail.com>
Cc:     linux-man <linux-man@vger.kernel.org>
From:   Heinrich Schuchardt <xypron.glpk@gmx.de>
Subject: memcpy.2: missing restrict keyword
Message-ID: <5a8997be-479b-d813-ce7a-558a8e6633e9@gmx.de>
Date:   Sun, 27 Dec 2020 21:01:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.1
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:BBMplZd880J6vA+xXFrgT5KcUcOLWBUPrTMmBhJTlRYxNnvRf0+
 bON3uavEJQIsV+cjREggCMU1qyrD3mcVt9SYiJC687PPBDyByD0y30OC3OzJKsHS1wJYM7n
 clXey+/pWL2CE5aWZVl2SpN6TqmMwSdObSQdoEAFG2GNENh7p4PaSNePxMEh8INaHg+CcNC
 /adSf+TznrWviQUZq2eDQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:VS/IbKEb//s=:SumNH5l2c4U5ZGualtgLX6
 NxsmUtz3GZT0dzCe02S9KVP7iLXCaoBV5HewXARL7B4kZvbj63zdH0Q/6y4gMWpnkXmSU5gmH
 yCvp3hSrpdXdvRZ0Vot2xqKyFnz1qvb1TWZ5PbU3fePtqSSV3vKHNRTaeCgbcOJ/eD35PO4jQ
 BdWTXyzJK0fgm+0zMAImYiKADpRAQAU5z8njGjA1SoQWQjCeZpk7hYWkp+I7JUddk48CVdOSv
 JS+ktGUg/ONk3o0n4L+NapW1OYkWH5b6u6imMQrffM9MdcpV8B+ixO0tG8ye7Je3c6U5IjuKj
 80FaanKvyjGww73aN8mppWi702NhXTt4EdbGzmoWTfh81BMR6ECNObxubpEMmqtCXFD4d09yB
 PaIzFsV5lH6mdnydJdSq2QNPgikGFSl/Y1V+4Yfkyou7DuxZsoCvVuvLAN1VuNPQt+ECY0tVC
 m/GsGII8dKw0Sy8pC8+2uT6Aw3fR/Sug6AIYPgRBfOsvrDM3F/5JBzyuIL1AkPiSw08Nyf2DO
 pNcHGUt3qWGZyE7RpyhfFVZaRs16ApbZE0ZINieqPz0w5F0kOqXry2/lFSc1yGbu4k42tkPeV
 lvZOHeETQXqm45ctxI1h4FQOWxC8LIsWZ2hMOsUfeYL7uMzlbmEw+eWkUSzPUNbUZarofvY1h
 8t8ZYEfA76/eEF2X+W9Z5NckVud8NAT9XQ53LdxiHetwCxRclN7jKwTtgYFwPpPt7upt06PJA
 zjPSLPe+vWlgZQ7jlYQKRucM2d4OgvI8pLLWx3YiIoOzvvXT4ey61v+AmIjsACG3hvbNtwrw0
 upwdSjBg/1CE/s8sb46hTegGIWb8myTudGYc0KbQF5LVkE9xE1bu5YMnr9FiGjZBzi+xRIO9L
 fJr4Orhn7257HOuBwU9g==
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello Michael,

Since C99 the memcpy is defined as

void *memcpy(void* restrict dst, const void* restrict src, size_t n);

Shouldn't the restrict keyword be shown in the prototype on the man-page?

Other concerned functions include:

memccpy(), strcat(), strncat, strcpy(), strncpy(), strxfrm(), strtok(),
strtok_r(), printf()-family, fcvt_r(), strtoimax()-family,
getmntent_r(), ...

Just grep for restrict in the standard includes.

Best regards

Heinrich
