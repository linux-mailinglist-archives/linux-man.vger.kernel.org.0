Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A84023D5A2F
	for <lists+linux-man@lfdr.de>; Mon, 26 Jul 2021 15:17:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232572AbhGZMhY (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 26 Jul 2021 08:37:24 -0400
Received: from smtpout2.vodafonemail.de ([145.253.239.133]:52112 "EHLO
        smtpout2.vodafonemail.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232334AbhGZMhY (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 26 Jul 2021 08:37:24 -0400
Received: from smtp.vodafone.de (smtpa05.fra-mediabeam.com [10.2.0.36])
        by smtpout2.vodafonemail.de (Postfix) with ESMTP id 33319123078;
        Mon, 26 Jul 2021 15:17:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nexgo.de;
        s=vfde-smtpout-mb-15sep; t=1627305471;
        bh=YyATT/L6J22eV33TTHF87pz+652/bcVuDSeMZLXBQN8=;
        h=From:To:Cc:References:In-Reply-To:Subject:Date;
        b=GphdhfCGBTzeurR/nAFbUOg7XR7VKifKnDulmQoTGl8kmyhQvFnOd7iq1qjAiY1cC
         ITclXrssrtnCH6RLSEV+11wAwxIDG387Bz94kzrPMY9+1CzllNDeB1W7lqdV/Sp7+b
         YwgABF9vilQn14xNCoyJ0qUgDHaxM+hMO7TpjNno=
Received: from H270 (p5b38f1bc.dip0.t-ipconnect.de [91.56.241.188])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by smtp.vodafone.de (Postfix) with ESMTPSA id 86DF814023C;
        Mon, 26 Jul 2021 13:17:50 +0000 (UTC)
Message-ID: <400F0D31E91143D3A0DBA2335E4D18BB@H270>
From:   "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To:     "Alejandro Colomar \(man-pages\)" <alx.manpages@gmail.com>
Cc:     <linux-man@vger.kernel.org>, <mtk.manpages@gmail.com>
References: <8514C525E9C345FEA377AC5912010871@H270> <69a547a9-7d25-73bf-e1f4-7cfbfdcb79aa@gmail.com>
In-Reply-To: <69a547a9-7d25-73bf-e1f4-7cfbfdcb79aa@gmail.com>
Subject: Re: wcstok(3) code sample
Date:   Mon, 26 Jul 2021 15:13:29 +0200
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
X-purgate-size: 1659
X-purgate-ID: 155817::1627305470-00004EF9-13466928/0/0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi Alex,

you wrote Sunday, July 25, 2021 10:25 PM:

> Hi Stefan,
> 
> On 7/12/21 11:07 AM, Stefan Kanthak wrote:
>> Hi,
>> 
>> the examples section of wcstok(3) shows the following code
>> which exhibits undefined behaviour and typically segfaults:
>> 
>> <https://man7.org/linux/man-pages/man3/wcstok.3.html#EXAMPLES>
>> 
>> |  wchar_t *wcs = ...;
>> |  wchar_t *token;
>> |  wchar_t *state;
>> |  for (token = wcstok(wcs, " \t\n", &state);
>> |       token != NULL;
>> |       token = wcstok(NULL, " \t\n", &state)) {
>> |       ...
>> |  }
>> 
>> The string literal pointed to by wcs is read-only, and an
>> attempt to modify a string literal results in undefined
>> behaviour; wcstok() but writes NULs into its input string.
>> 
>> FIX: replace the first line with either
>> 
>> |  wchar_t *wcs = strdup(...);
>> 
>>       or
>> 
>> |  wchar_t wcs[] = ...;
> 
> That code is a bit unfortunate.

Yes.

> It is not a complete program, so it can be interpreted in different ways,
> one of them the one you said, which results in UB.

Correct: I interpret such snippets in their worst case and notice olny/first
their vulnerabilities or UB.

> I guess the intent of the code was that wcs was assigned a pointer to a 
> wchar_t * (not a literal), and therefore, it would be correct.

Yes.

> The code predates version control, so we'll never know...
> 
> Would you mind sending a complete example?

Just add a comment which tells that the string pointed to by wcs must not
be a literal (or read-only).

|  wchar_t *wcs[] = ...;    // must not point to a literal or read-only memory

regards
Stefan
