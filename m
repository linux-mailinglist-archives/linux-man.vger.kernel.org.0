Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D9EB3C59F5
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 13:03:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1354576AbhGLJVT (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 05:21:19 -0400
Received: from smtpout2.vodafonemail.de ([145.253.239.133]:45230 "EHLO
        smtpout2.vodafonemail.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244895AbhGLJVQ (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 05:21:16 -0400
Received: from smtp.vodafone.de (smtpa07.fra-mediabeam.com [10.2.0.38])
        by smtpout2.vodafonemail.de (Postfix) with ESMTP id 06AF6122E51;
        Mon, 12 Jul 2021 11:18:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nexgo.de;
        s=vfde-smtpout-mb-15sep; t=1626081506;
        bh=5XvokubHi/Vo3psU9+M/9EkeiKyXG8Vbq5emjyIoXvc=;
        h=From:To:Cc:Subject:Date;
        b=MPLH7FkjWNLwN+lFNEehVbL62eV9Yw0qD0DvwAA0AKRl2BB+KPPwGsM7m+BtWBFy/
         v4V+5LYtufkV/qdMvw5hNKAPamWnr4tB+9Btlp1dcwIFcFEm3s6slLs+WXEEssjexW
         6b0jHXTx/Pjva/g4fR93zb+cwG/BRpAN1fIvqhm4=
Received: from H270 (p54805893.dip0.t-ipconnect.de [84.128.88.147])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by smtp.vodafone.de (Postfix) with ESMTPSA id 6E07D1401B9;
        Mon, 12 Jul 2021 09:18:25 +0000 (UTC)
Message-ID: <8514C525E9C345FEA377AC5912010871@H270>
From:   "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To:     <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>
Cc:     <linux-man@vger.kernel.org>
Subject: wcstok(3) code sample
Date:   Mon, 12 Jul 2021 11:07:33 +0200
Organization: Me, myself & IT
MIME-Version: 1.0
Content-Type: text/plain;
        charset="iso-8859-1"
Content-Transfer-Encoding: 7bit
X-Priority: 3
X-MSMail-Priority: Normal
X-Mailer: Microsoft Windows Mail 6.0.6002.18197
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.24158
X-purgate-type: clean
X-purgate-Ad: Categorized by eleven eXpurgate (R) http://www.eleven.de
X-purgate: This mail is considered clean (visit http://www.eleven.de for further information)
X-purgate: clean
X-purgate-size: 712
X-purgate-ID: 155817::1626081505-0000752D-C64827C7/0/0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

the examples section of wcstok(3) shows the following code
which exhibits undefined behaviour and typically segfaults:

<https://man7.org/linux/man-pages/man3/wcstok.3.html#EXAMPLES>

|  wchar_t *wcs = ...;
|  wchar_t *token;
|  wchar_t *state;
|  for (token = wcstok(wcs, " \t\n", &state);
|       token != NULL;
|       token = wcstok(NULL, " \t\n", &state)) {
|       ...
|  }

The string literal pointed to by wcs is read-only, and an
attempt to modify a string literal results in undefined
behaviour; wcstok() but writes NULs into its input string.

FIX: replace the first line with either

|  wchar_t *wcs = strdup(...);

     or

|  wchar_t wcs[] = ...;

regards
Stefan
