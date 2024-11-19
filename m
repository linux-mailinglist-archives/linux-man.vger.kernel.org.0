Return-Path: <linux-man+bounces-2045-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B31A9D2188
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 09:24:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35C9B1F229D6
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 08:24:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57F019992E;
	Tue, 19 Nov 2024 08:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="QvTvfW/C";
	dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b="MaHMatTj"
X-Original-To: linux-man@vger.kernel.org
Received: from haruka.juszkiewicz.com.pl (haruka.juszkiewicz.com.pl [185.243.53.191])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0F0158874
	for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 08:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.243.53.191
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732004618; cv=none; b=F+ZHrtSZYcm7Ed8vUrLxGNCfsWa3xg/iSdGAPxVcSnCrdjihkbObAZKxuvav+Gziw21Y6j0HAExM/FzGsQ19PkkitaxjyQHH57qfG5KgpgrsmYwk55SEI5/CBDVtdS0QcPqk+WdWxxYuAdNHAJWCX+06126L1joIv32giyObk4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732004618; c=relaxed/simple;
	bh=d2jYZbE8l4qaU5/Km5vdo095mNjkth+VqAxJW2RlDbc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rUSXEfwyUHsgO/OHnn6FQaIM6joAblfyGei7ZZ8ZT5l2MWoVMh0Nzpmeg04SuxSnlTBKVIQiRCTWfFgXvmwKVcOc9cupwchfttRNHWyK4zMEG9dUXlwrfpYOl1JE3eQ55B3KjoeNma1hoGOvmry1aX5KQwivTUZ4BGGRBFWQpas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl; spf=pass smtp.mailfrom=juszkiewicz.com.pl; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=QvTvfW/C; dkim=pass (2048-bit key) header.d=juszkiewicz.com.pl header.i=@juszkiewicz.com.pl header.b=MaHMatTj; arc=none smtp.client-ip=185.243.53.191
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=juszkiewicz.com.pl
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=juszkiewicz.com.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=juszkiewicz.com.pl;
	s=mail; t=1732004614;
	bh=d2jYZbE8l4qaU5/Km5vdo095mNjkth+VqAxJW2RlDbc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=QvTvfW/CAoNfppp16lkBybx/wZYOPTy+hz+hl3r9Z1SVCni2NWVrpk/Y18VC6+lWF
	 Shp2acivWRyJS8A6U0h15kXF9Ep01ekIbj/RK7xBdIgOFUW3gZRb/ebAlbsiySti5c
	 6GG8Y582T2+3K7MRo8/xpSD84hCllQ88ta2c6RdNAp7PEfTwwHZ0Q9gWxoPDtn3Hsg
	 jOxtMo+0ZX+Mn5pNTC/yKvTFOEm3gZpcea9KJjXjF9u4o+iHblFcZPqSD67DG/031C
	 QVns9/xPjto+HnDSQ93BO84fk44e+Wn35VNrIy4fZy8wJdkTNN+bOgwm+YueE1+GOO
	 kbsWtX8XYsU8Q==
Received: from utena.juszkiewicz.com.pl (utena.juszkiewicz.com.pl [158.101.208.177])
	by haruka.juszkiewicz.com.pl (Postfix) with ESMTPSA id B4C8422979;
	Tue, 19 Nov 2024 09:23:34 +0100 (CET)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 7FECC415E5;
	Tue, 19 Nov 2024 09:23:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=juszkiewicz.com.pl;
	s=mail; t=1732004613;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZehrCm8TIs2KFW7KJ339udYT78a8wEu2hl+fjwTUDtk=;
	b=MaHMatTjcKfU/t30Q1uflfSQl98RaCEuvHuyCGYUweIeuAB6524oXhwPVJbn72HSwXqEY2
	nEjJ3dZ72BYy5vaiSc8qQ+0q9yVpF6zr/bsiM85cywqzVBZrVIIwt37hYVJvNfMC8Z00lM
	u1HPCCVr34/Qix+4HOM5nf5t2LFe3tn/EExRx1qZLiGiTrOYX3qTZcNhKhS2yAKzYP18N0
	3pKPypnuDz4FtAikDc3m8WzxSj3plsQu69iBrxTzP6fD2b+VRKzAIkugXz7jRCYIZvXcRC
	Jws1Y9Jc7HUnUVs90CrsmQOoMf74OqcHXLMIFYUIx5cyd0Gi7+ruCWtWFdRglA==
Message-ID: <5778beee-a1c0-45cf-93fa-8d36501911f9@juszkiewicz.com.pl>
Date: Tue, 19 Nov 2024 09:23:31 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] add time64 copies of system calls
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <fb722cc1be40a2f74e204a23d5c11944c167d55c.1731957032.git.marcin@juszkiewicz.com.pl>
 <20241118225148.fgrvxxg2p6on4nl3@devuan>
From: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
Content-Language: pl-PL, en-GB
In-Reply-To: <20241118225148.fgrvxxg2p6on4nl3@devuan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Last-TLS-Session-Version: TLSv1.3

W dniu 18.11.2024 o 23:51, Alejandro Colomar pisze:
> Hi Marcin,
> 
> On Mon, Nov 18, 2024 at 08:16:24PM +0100, Marcin Juszkiewicz wrote:
>> During work on y2038 problem several time related system calls got "64"
>> or "_time64" copies. It happened only on 32-bit architectures as there
>> was no problem on 64-bit ones.
>>
>> Signed-off-by: Marcin Juszkiewicz <marcin@juszkiewicz.com.pl>
> 
> This only adds link pages, but doesn't add any documentation for them.
> Should we add anything?  Maybe to the SYNOPSIS and VERSIONS (or HISTORY)?

Will look into it.

