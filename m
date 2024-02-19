Return-Path: <linux-man+bounces-458-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EBD0859E07
	for <lists+linux-man@lfdr.de>; Mon, 19 Feb 2024 09:17:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F9131C21BF6
	for <lists+linux-man@lfdr.de>; Mon, 19 Feb 2024 08:17:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01713210F0;
	Mon, 19 Feb 2024 08:17:43 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from air.basealt.ru (air.basealt.ru [194.107.17.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D380E210E1
	for <linux-man@vger.kernel.org>; Mon, 19 Feb 2024 08:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.107.17.39
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708330662; cv=none; b=gNcV2nnlZsbHXIWtYyKMjUvoLzAQN1OwVJe5m7pcxKdQsMcEiKft/AbidVjy8TbekQxEfxYioBuYZN3sQHyoIhkx6D2qxWjGX5UoiPkbBw3vlsvlZSvdd9bNuAfFv7bNYEO49Id+c8A1h6zgI7hrHKTrylvU+oTOgQBuff6q1EA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708330662; c=relaxed/simple;
	bh=n1q61MOY23vGnPGq5D2bHLgmQr3Ry3pgW5FXBQufPD8=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=sUxtebmW0QtQgeyVoKePwxgH7jRCMqJZrbFdJyzHlFmSmVO0AdsSqWKE5W3XZ/lLzI/9z0OuuguhfAeb72Ml7CaMsNBM+JwXZgwxbR64hkVKrpUoBnA5KA+6A7rKhWPsIc2InSlmIEfIODhkijWmgoZG+9Nof9eMk2Cq9AAi7bM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org; spf=pass smtp.mailfrom=altlinux.org; arc=none smtp.client-ip=194.107.17.39
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=altlinux.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=altlinux.org
Received: by air.basealt.ru (Postfix, from userid 490)
	id E3BBB2F20246; Mon, 19 Feb 2024 08:17:31 +0000 (UTC)
X-Spam-Level: 
Received: from [10.88.144.32] (obninsk.basealt.ru [217.15.195.17])
	by air.basealt.ru (Postfix) with ESMTPSA id BFF132F2023E;
	Mon, 19 Feb 2024 08:17:29 +0000 (UTC)
Message-ID: <08125e65-52ed-a846-2b38-c7f63071c898@basealt.ru>
Date: Mon, 19 Feb 2024 11:17:29 +0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: alx@kernel.org
Cc: dutyrok@altlinux.org, kovalev@altlinux.org, linux-man@vger.kernel.org
From: =?UTF-8?B?0JDQu9C10LrRgdCw0L3QtNGAINCe0YTQuNGG0LXRgNC+0LI=?=
 <oficerovas@altlinux.org>
Subject: man page for syscall delete_module is outdated
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Found out that man page for delete_module syscall is outdated.
The behaviour described there doesn't match to code, specifically for 
unloading module if its have no refcnt. Parameter O_NONBLOCK described 
in man doesn't exist anymore in kernel versions 3.13+, which is quite 
old, only O_TRUNC parameter present for actual kernel version, 
O_NONBLOCK does nothing.
I've also opened an issue on bugzilla: 
https://bugzilla.kernel.org/show_bug.cgi?id=218489

