Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7EDA33C50A
	for <lists+linux-man@lfdr.de>; Mon, 15 Mar 2021 19:01:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232651AbhCOSAw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 15 Mar 2021 14:00:52 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:57568 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232432AbhCOSAg (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Mon, 15 Mar 2021 14:00:36 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id 6E6BD20424;
        Mon, 15 Mar 2021 19:00:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1615831232;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=CkaN9AZ03poPxA7f4gJYYTjbp5p4x6TZ6uzceZecgPM=;
        b=RTkj8QuRR6OMZINbRxJfdfF9SrjOrhIY0tJf90GrEGiXYOF+bEjbxEhYP9V6F8YWltVG5R
        jRYJtycEInEtGW+8YItSdICvqbbx+/kzEg3z8DNYGBywbsbvuUH1EouREaoPx8gS1THfaX
        IW+mBQn7opOK84G5oLwMAGpufGfCVPzbBPH0swxg7EF8d7EXeF5qL66nFSwCAQlZfsJQ3T
        P8rIIMIHL3bVc3e/CQRZPC4g+RknZWKbOpxifktgafD88C6A6ltdv/+gkgxtE11EZbhBwU
        zNvBWO11G9n7Lz8vuUykDxWNyac/ctDllEpWpgcElsdm4JFVU7cXq5jo33e8dw==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Mon, 15 Mar
 2021 19:00:31 +0100
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.009; Mon, 15 Mar 2021 19:00:31 +0100
From:   Walter Harms <wharms@bfs.de>
To:     Alejandro Colomar <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
CC:     "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "libc-alpha@sourceware.org" <libc-alpha@sourceware.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Florian Weimer <fweimer@redhat.com>
Subject: AW: [RFC v3 04/17] arch_prctl.2: SYNOPSIS: Remove unused includes
Thread-Topic: [RFC v3 04/17] arch_prctl.2: SYNOPSIS: Remove unused includes
Thread-Index: AQHXGD7XAxTSL2NJaE+7W5iBTQCmt6qFVHc7
Date:   Mon, 15 Mar 2021 18:00:31 +0000
Message-ID: <be6a5420c2de4cd5a772a878a173fd09@bfs.de>
References: <20210214133907.157320-1-alx.manpages@gmail.com>,<20210313192526.350200-5-alx.manpages@gmail.com>
In-Reply-To: <20210313192526.350200-5-alx.manpages@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26032.001
x-tm-as-result: No-10-3.260300-5.000000
x-tmase-matchedrid: CDTSlS88fVTRubRCcrbc5grcxrzwsv5u3dCmvEa6IiGoLZarzrrPmY8c
        NcoztgfFQVZ/emx6g8Y8CQr3JqGFgWbK2Lp4BaXTs35egIUyB0yNY/pqxovzxWww+4tkH8hH/eb
        8AiQy4VrAt83TuKuapBv4L0374LF/3huBcHFqgEv1P1OLgOxuG9Mtvp2vZ9b08YXezpzoZTpAwV
        xIwdMCgWe4Wa1eP/asXl5aEpWgX5dEVewvaIzmdXYZxYoZm58F9e5am3m57X1wh5cseF+Y9lMe5
        Blkpry7rdoLblq9S5rZsNA4lAbe+0kjllSXrjtQgxsfzkNRlfLdB/CxWTRRuwihQpoXbuXFx/mZ
        2/tYMNdk6kcSjxdDoZky1yTNkSniULYWWJ6MTvne3IkDeq6Pe3VdQuCkdZvmVs3mQrPFErZ4Nj9
        8aMLOkXuBattE+CJ0qcFxC+mrhy1WwS3yrrDBJd6uf8BQDO/7JXUq4O4yYIf6svlVb6h9lw==
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10-3.260300-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26032.001
x-tm-snts-smtp: DF8E54FA244AE94B072DC9C21BA856F55E500E6D160883E88D602C86E137F0B82000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Spamd-Result: default: False [-16.37 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         TO_DN_SOME(0.00)[];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         RCPT_COUNT_FIVE(0.00)[6];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         BAYES_HAM(-2.87)[99.44%];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         SUSPICIOUS_RECIPS(1.50)[]
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spam-Status: No, score=-16.37
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

I have learned the other way around:
#include <sys/prctl.h>
Is a general system header to use that may include
the asm/prctrl.h what should never be included by
userspace programms.

jm2c,
re,
 wh
________________________________________
Von: Alejandro Colomar <alx.manpages@gmail.com>
Gesendet: Samstag, 13. M=E4rz 2021 20:25:14
An: mtk.manpages@gmail.com
Cc: Alejandro Colomar; linux-man@vger.kernel.org; libc-alpha@sourceware.org=
; linux-kernel@vger.kernel.org; Florian Weimer
Betreff: [RFC v3 04/17] arch_prctl.2: SYNOPSIS: Remove unused includes

WARNUNG: Diese E-Mail kam von au=DFerhalb der Organisation. Klicken Sie nic=
ht auf Links oder =F6ffnen Sie keine Anh=E4nge, es sei denn, Sie kennen den=
 Absender und wissen, dass der Inhalt sicher ist.


AFAICS, there's no reason to include that.
All of the macros that this function uses
are already defined in the other headers.

Cc: glibc <libc-alpha@sourceware.org>
Signed-off-by: Alejandro Colomar <alx.manpages@gmail.com>
---
 man2/arch_prctl.2 | 1 -
 1 file changed, 1 deletion(-)

diff --git a/man2/arch_prctl.2 b/man2/arch_prctl.2
index 8706cd1ec..d1b9e16f9 100644
--- a/man2/arch_prctl.2
+++ b/man2/arch_prctl.2
@@ -28,7 +28,6 @@ arch_prctl \- set architecture-specific thread state
 .SH SYNOPSIS
 .nf
 .BR "#include <asm/prctl.h>" "        /* Definition of " ARCH_* " constant=
s */"
-.B #include <sys/prctl.h>
 .BR "#include <sys/syscall.h>" "      /* Definition of " SYS_* " constants=
 */"
 .B #include <unistd.h>
 .PP
--
2.30.2

