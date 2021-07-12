Return-Path: <linux-man-owner@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B26F23C5A23
	for <lists+linux-man@lfdr.de>; Mon, 12 Jul 2021 13:03:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235713AbhGLJfw (ORCPT <rfc822;lists+linux-man@lfdr.de>);
        Mon, 12 Jul 2021 05:35:52 -0400
Received: from smtpout2.vodafonemail.de ([145.253.239.133]:38696 "EHLO
        smtpout2.vodafonemail.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356447AbhGLJeX (ORCPT
        <rfc822;linux-man@vger.kernel.org>); Mon, 12 Jul 2021 05:34:23 -0400
Received: from smtp.vodafone.de (smtpa05.fra-mediabeam.com [10.2.0.36])
        by smtpout2.vodafonemail.de (Postfix) with ESMTP id 6393F121A3A;
        Mon, 12 Jul 2021 11:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nexgo.de;
        s=vfde-smtpout-mb-15sep; t=1626082294;
        bh=u0hI9Fs7XvAlNuEIX2hj+wh09VWcVRVH9xt6442j7M0=;
        h=From:To:Cc:Subject:Date;
        b=mHP+Gq5IxsSBpYRSbfTzMP4tT16lFGxWaUD5ODfaF07PT3mo0YxdSbU1whff1FpC3
         f1+BcPEk2BXoTK8lY3CBWhPoZwX4TuYTXoYTJq/kOxs/R80D8dI73tmPLz4cVhIJPc
         /8tXSCRqq3Pfgi+29iMoED+2DNMO6jbqtCaZOrrc=
Received: from H270 (p54805893.dip0.t-ipconnect.de [84.128.88.147])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
        (No client certificate requested)
        by smtp.vodafone.de (Postfix) with ESMTPSA id B33ED1401C3;
        Mon, 12 Jul 2021 09:31:33 +0000 (UTC)
Message-ID: <A957374054024F7DAA865C767B958654@H270>
From:   "Stefan Kanthak" <stefan.kanthak@nexgo.de>
To:     <mtk.manpages@gmail.com>, <alx.manpages@gmail.com>
Cc:     <linux-man@vger.kernel.org>
Subject: strstr(3): add special case for  empty needle, as in wcsstr(3)
Date:   Mon, 12 Jul 2021 11:20:08 +0200
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
X-purgate-size: 579
X-purgate-ID: 155817::1626082294-00004EF9-5422FF8B/0/0
Precedence: bulk
List-ID: <linux-man.vger.kernel.org>
X-Mailing-List: linux-man@vger.kernel.org

Hi,

in the section return value, wcsstr(3) provides the following note
for the special case of an empty needle:

<https://man7.org/linux/man-pages/man3/wcsstr.3.html#RETURN_VALUE>

|  Note the special case: If needle is the empty wide-character
|  string, the return value is always haystack itself.

The same note is but missing in strstr(3) and should be added there:

<https://man7.org/linux/man-pages/man3/strstr.3.html#RETURN_VALUE>

|  Note the special case: If needle is the empty string, the return
|  value is always haystack itself.

regards
Stefan
