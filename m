Return-Path: <linux-man+bounces-2777-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93477A90C96
	for <lists+linux-man@lfdr.de>; Wed, 16 Apr 2025 21:51:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 14D493A47EB
	for <lists+linux-man@lfdr.de>; Wed, 16 Apr 2025 19:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F70F2248AF;
	Wed, 16 Apr 2025 19:51:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ascz.de header.i=@ascz.de header.b="E5RO4ehv"
X-Original-To: linux-man@vger.kernel.org
Received: from vwp12212.webpack.hosteurope.de (vwp12212.webpack.hosteurope.de [5.35.232.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744A31547C0
	for <linux-man@vger.kernel.org>; Wed, 16 Apr 2025 19:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.35.232.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744833072; cv=none; b=jTlQRncNiQGXYwVzKxOD1rgMBIpMNyKdRiN/scPjMzsVUQrXjCbEKFdy09Ymi1T5bUCV+ho+ibvA0zrOOxMGNPfjM32P7eBPXIucBAz4TTpiEPyws7nkyCavFdS+r8qFTFsI073mIq6avlhgyDdzgtxmqglOkbs9uKF94htHQlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744833072; c=relaxed/simple;
	bh=3k606XIeuq6On3iiHn7slt8WyllJuUYpJ3IQ9s+7Eck=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fmCd7KST4ICkDzhG8tB4K1B8NJNtmapPspmYpmSaFc1DtlZGV/iErD5Kyba9cCklIirVoqt3qvZ2mP+/UXgKEP4lVlVZLYMHy623rYjzutPyiLasnyh/NoKfG7zqMu4Jw/9+fdmJdFdD9e3xMSIIjU0x4LIDcnzQ4hYbQ+cNwKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ascz.de; spf=pass smtp.mailfrom=ascz.de; dkim=pass (2048-bit key) header.d=ascz.de header.i=@ascz.de header.b=E5RO4ehv; arc=none smtp.client-ip=5.35.232.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ascz.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ascz.de
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=ascz.de;
	s=he169026; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:
	References:Cc:To:Subject:MIME-Version:Date:Message-ID:From:Sender:Reply-To:
	Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:In-Reply-To:
	References; bh=tizHNOyuqFazX7dOY9blIbtqPQwSe/lvQzadEB6mJ/o=; t=1744833069;
	x=1745265069; b=E5RO4ehvX6NKewFX47pUDPIkLBfItP3mxc2VPRwrwO5duUk03uUr59e/MSomh
	ZyTp6nkI3lx1vtW1UAOXdQimaGv7dcjV6R9JMwxlskwouhdOv3bElBBseE0sqB/aJDl/VlCAV5HBI
	WBzQTP3Pm31F2gGWXJme0inMVuYKyUMx0xckstqiODP9ZLPtyo2t9uTrDiyEZrjMYHX7kXiGtxo0X
	yZX4/ClStb9+3cms3t9wHdEwh53bDu89qsP1ywHs0vjwLlUrWb8E4v2rFQGu1tNeizDl3zddjxUg+
	lIkQmb1REM8dF+dNVaeQTqcvX0ZaSI7HHmMmZOhTeLXKm1qjPA==;
Received: from p200300c0df0aef73dd6a0aca47211a42.dip0.t-ipconnect.de ([2003:c0:df0a:ef73:dd6a:aca:4721:1a42]); authenticated
	by vwp12212.webpack.hosteurope.de running ExIM with esmtpsa (TLS1.3:ECDHE_X25519__RSA_PSS_RSAE_SHA256__AES_128_GCM:128)
	id 1u58mk-007lA4-0A;
	Wed, 16 Apr 2025 21:51:02 +0200
Message-ID: <b6978007-3408-4008-82d8-20a4713c42b7@ascz.de>
Date: Wed, 16 Apr 2025 21:51:01 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man3/abs.3: Document u{,l,ll,imax}abs()
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, Lenard Mollenkopf <glibc@lenardmollenkopf.de>,
 Jakub Jelinek <jakub@redhat.com>
References: <28a36070fe18707ab9fa26b91c88e6fd87a72097.1744566285.git.wg14@ascz.de>
 <g3dj7mhsl2mlaf3srsvz3oocjmfv2db4d6d2y2aartwz7t4mol@5vzkhothrry4>
From: Anton Zellerhoff <wg14@ascz.de>
In-Reply-To: <g3dj7mhsl2mlaf3srsvz3oocjmfv2db4d6d2y2aartwz7t4mol@5vzkhothrry4>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-bounce-key: webpack.hosteurope.de;wg14@ascz.de;1744833069;f97524d0;
X-HE-SMSGID: 1u58mk-007lA4-0A

Hi Alex,

On Mon, 14 Apr 2025 09:51:03 +0200, Alejandro Colomar wrote:
> Thanks!  I've applied the patch.  There are some things I don't like
> about the layout of the page, but since they are pre-existing or based
> on pre-existing text, I'll amend them myself afterwards.

Thank you! :-)

>>   For
>>   .BR llabs ()
>> @@ -121,6 +158,12 @@ .SH NOTES
>>   .BR llabs ()
>>   and
>>   .BR imaxabs ()
>> +and (since GCC 15.0)
>> +.BR uabs (),
>> +.BR ulabs (),
>> +.BR \%ullabs (),
>> +and
>> +.BR \%uimaxabs ()
> 
> Should I just remove this entire paragraph?  Who cares about it being
> a built-in or not?  Of course GCC optimizes many library calls,
> including memcpy(3), and we don't say so for each one.

A quick grep yields that abs(3) was the only page that (still?) had 
information about GCC built in support.  I also do not see a need to 
document this.

Have a lovely night!

Anton

