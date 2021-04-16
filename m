Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 256CE362465
	for <lists+linux-man@lfdr.de>; Fri, 16 Apr 2021 17:47:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234948AbhDPPrB (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Fri, 16 Apr 2021 11:47:01 -0400
Received: from mx01-sz.bfs.de ([194.94.69.67]:2142 "EHLO mx01-sz.bfs.de"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233213AbhDPPrB (ORCPT <rfc822;linux-man@vger.kernel.org>);
        Fri, 16 Apr 2021 11:47:01 -0400
Received: from SRVEX01-SZ.bfs.intern (exchange-sz.bfs.de [10.129.90.31])
        by mx01-sz.bfs.de (Postfix) with ESMTPS id A437E20655;
        Fri, 16 Apr 2021 17:46:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bfs.de; s=dkim201901;
        t=1618587993;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=xJxOBG5jSFFu/TpkhJoGy0ryjnhgX4CzCYI4/QEyTg4=;
        b=uZ1Wd0QW79Y08RN9+hSylExzjrqTHE4R+ietr5Xq2Dc/y7Ly4LKb9pgv2h4PhMztlaDgFI
        l91ZmhkAM0E7zT3+nvK4F2hCdkkOAiRTMwQn7HSi49WSdEh6Zmd6fQ73U45J/WBfBniIt0
        +xSw1Mkzc6aJsKVsDmCov21c+sNlPbN9sGvV7G4QPvsgtLaW3mgDn39/4wRCxb3qzloI4f
        mueV6ytvMg8cYW0kB8ZY7RCErsKG8DEyVuycWq36M9/bWd7ev9JPfhQ41dTC5RV5m/nnNS
        08uyjvIuRSZcwb0Hh2WCGoFMTpXwxkeINxFXf3TFfeseLJEDDSFlzCWvDqhRqQ==
Received: from SRVEX01-SZ.bfs.intern (10.129.90.31) by SRVEX01-SZ.bfs.intern
 (10.129.90.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2176.2; Fri, 16 Apr
 2021 17:46:32 +0200
Received: from SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a]) by
 SRVEX01-SZ.bfs.intern ([fe80::7d2d:f9cb:2761:d24a%13]) with mapi id
 15.01.2176.012; Fri, 16 Apr 2021 17:46:32 +0200
From:   Walter Harms <wharms@bfs.de>
To:     Utkarsh Singh <utkarsh190601@gmail.com>,
        "linux-man@vger.kernel.org" <linux-man@vger.kernel.org>,
        "alx.manpages@gmail.com" <alx.manpages@gmail.com>,
        "mtk.manpages@gmail.com" <mtk.manpages@gmail.com>
Subject: AW: umask.1p: Can we add a table for octal and symbolic notation?
Thread-Topic: umask.1p: Can we add a table for octal and symbolic notation?
Thread-Index: AQHXIMGk1uPs01FWqkaAnDB4rwhglaq3W77n
Date:   Fri, 16 Apr 2021 15:46:32 +0000
Message-ID: <747334490ab842f7b7816bad09a6d2fd@bfs.de>
References: <878s6cbmm1.fsf@gmail.com>
In-Reply-To: <878s6cbmm1.fsf@gmail.com>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.137.16.39]
x-tm-as-product-ver: SMEX-14.0.0.3080-8.6.1012-26096.001
x-tm-as-result: No-10--1.618500-5.000000
x-tmase-matchedrid: CDTSlS88fVTvXj+qSBwlrhvgzEPRJaDEKQNhMboqZloTiSW9r3PknArV
        qGrinAXDSLX/wjk94KaYHb4xZ59iP8+9kIneOZlhifYNsPPgB9YXivwflisSrFibt1Tapb7sN4I
        xix1zvwXnHqJEtsM2g7xFpZGWIKcrzECxVOnBRA4eTAX99VElYA8JAnaMw0RV/q/20XcvFJXaA6
        vVR1pR1kZ02jSQiO2TGdtMUojgqQcvD1MLZgs3kp1U1lojafr/3JwFMzrIETkUFDkgqWz8DohwH
        j/iDNtwsxzDX09sk0ubKItl61J/yZkw8KdMzN86KrauXd3MZDX371moSn0VOHl1muQ7mwpfqbRM
        VXqvadBCXlnEOGn1Kv5z1LWUzph36OVqKHY/qJ4qe/LX7U5aZL6h8M3Bx4hncb1wJpgOzeVO5Sz
        z8Z32FjyV3D5IMRMJm2C2cLnXbN+PaW6Ua24rHSDFuFEiHCqrnqg/VrSZEiM=
x-tm-as-user-approved-sender: No
x-tm-as-user-blocked-sender: No
x-tmase-result: 10--1.618500-5.000000
x-tmase-version: SMEX-14.0.0.3080-8.6.1012-26096.001
x-tm-snts-smtp: 0D2CE16FA030302FC1EF29EDC22BD604804B4A2DD10CADA016E121783BDED4362000:9
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Authentication-Results: mx01-sz.bfs.de;
        none
X-Spamd-Result: default: False [-16.72 / 7.00];
         ARC_NA(0.00)[];
         TO_DN_EQ_ADDR_SOME(0.00)[];
         HAS_XOIP(0.00)[];
         FROM_HAS_DN(0.00)[];
         RCPT_COUNT_THREE(0.00)[4];
         FREEMAIL_ENVRCPT(0.00)[gmail.com];
         TO_MATCH_ENVRCPT_ALL(0.00)[];
         TAGGED_RCPT(0.00)[];
         MIME_GOOD(-0.10)[text/plain];
         TO_DN_SOME(0.00)[];
         DKIM_SIGNED(0.00)[bfs.de:s=dkim201901];
         WHITELIST_LOCAL_IP(-15.00)[10.129.90.31];
         NEURAL_HAM(-0.00)[-1.000];
         FREEMAIL_TO(0.00)[gmail.com,vger.kernel.org];
         RCVD_NO_TLS_LAST(0.10)[];
         FROM_EQ_ENVFROM(0.00)[];
         MIME_TRACE(0.00)[0:+];
         SUBJECT_ENDS_QUESTION(1.00)[];
         RCVD_COUNT_TWO(0.00)[2];
         MID_RHS_MATCH_FROM(0.00)[];
         BAYES_HAM(-2.72)[98.78%]
X-Spam-Status: No, score=-16.72
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hello everybody,
i did no see any answer.=20

How is maintaining the posix-pages organized ?=20

re,
 wh
________________________________________
Von: Utkarsh Singh <utkarsh190601@gmail.com>
Gesendet: Mittwoch, 24. M=E4rz 2021 16:24
An: linux-man@vger.kernel.org; alx.manpages@gmail.com; mtk.manpages@gmail.c=
om
Betreff: umask.1p: Can we add a table for octal and symbolic notation?

WARNUNG: Diese E-Mail kam von au=DFerhalb der Organisation. Klicken Sie nic=
ht auf Links oder =F6ffnen Sie keine Anh=E4nge, es sei denn, Sie kennen den=
/die Absender*in und wissen, dass der Inhalt sicher ist.


Hi,

The POSIX.1 standard man page for umask is a really well written
document but lacks some notes for beginners.

For example comparing umask.1p to <https://en.wikipedia.org/wiki/Umask>
I really liked how Wikipedia added table for showing octal digits in umask
command to their corresponding action.

Can we do a similar thing for umask.1p or how can I contact The Open
Group to make changes into their manual?
--
Utkarsh Singh
