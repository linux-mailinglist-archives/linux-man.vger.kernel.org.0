Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E48A23C62D7
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 20:44:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233374AbhGLSrV (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 14:47:21 -0400
Received: from smtpout2.vodafonemail.de ([145.253.239.133]:59216 "EHLO
        smtpout2.vodafonemail.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230199AbhGLSrU (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 14:47:20 -0400
Received: from smtp.vodafone.de (smtpa07.fra-mediabeam.com [10.2.0.38])
        by smtpout2.vodafonemail.de (Postfix) with ESMTP id 8AB50123D8E;
        Mon, 12 Jul 2021 20:44:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nexgo.de;
        s=vfde-smtpout-mb-15sep; t=1626115464;
        bh=MzGi32CBJNcn//6cqrV9ONdD8qI/DPcE6kMyX1GeWWQ=;
        h=From:To:Cc:References:In-Reply-To:Subject:Date;
        b=FauWwVxoypR6PHWZ6D4ANYScp3L2thjiVMlOlvUJLxpM541S8ueyujBkqNqXHUngn
         9SgCsf/ZdV3RO3RHg+T5A2g13qgMDYfK8sYoW3N1u6M9jp3KsLgVke6R0fw/u61LQN
         aNwTN+VrLmdp/1s86+xcKSYA3Q+p3tIAIPHeufXg=
Received: from H270 (p54805893.dip0.t-ipconnect.de [84.128.88.147])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by smtp.vodafone.de (Postfix) with ESMTPSA id E19C21401B7;
        Mon, 12 Jul 2021 18:44:23 +0000 (UTC)
Message-ID: <F7B7DAEFD32949CD810BFC567ACA7B70@H270>
From:   "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To:     "Jakub Wilk" <jwilk@jwilk.net>
Cc:     <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>,
        <linux-man@vger.kernel.org>
References: <64D55817DE2A4D0E99757425D9883066@H270> <20210712160906.yfb4etzsylmzulox@jwilk.net>
In-Reply-To: <20210712160906.yfb4etzsylmzulox@jwilk.net>
Subject: Re: wcschr(3): add special case for  NUL, as in strchr(3)
Date:   Mon, 12 Jul 2021 20:41:34 +0200
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
X-purgate-size: 1529
X-purgate-ID: 155817::1626115464-0000752D-F14248FA/0/0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

"Jakub Wilk" wrote:

>* Stefan Kanthak <stefan.kanthak@nexgo.de>, 2021-07-12, 11:37:
>>JFTR: to avoid any possible confusion of "null byte" alias NUL with the 
>>"null pointer" alias NULL (C macro) or nullptr (C++), "null byte" 
>>should be replaced with "NUL byte"!
> 
> "NUL byte" looks like a typo for "NULL byte", so if anything, it makes 
> the potential for confusion greater.
> 
> Anyway, "null byte" is the preferred term in the man-pages style guide; 
> see the "NULL, NUL, null pointer, and null character" subsection in 
> man-pages(7).

Despite the statement

| Avoid also the terms "zero byte" and "null character".

the heading of said subsection itself but says "null character" instead
of the preferred "null byte"!

JFTR: the search function on <https://man7.org/linux/man-pages/index.html>
      gives 21 matches for "zero byte", 46 matches for "null character",
      and 146 matches for "null byte", i.e. the preferred term is not used
      in 1 of 3 cases.

And despite the statement

| The preferred term for the pointer is "null pointer" or simply
| "NULL"; avoid writing "NULL pointer".

plus a changelog entry (for version 3.56)

| Various pages
|    Michael Kerrisk
|        Global fix of "NULL pointer"
|            Change "NULL pointer" to "NULL" or null pointer".
|            POSIX uses the term "null pointer", not "NULL pointer".

43 pages still contain "NULL pointer", while 197 pages say "null pointer".

There's plenty room for improvement!

Stefan
