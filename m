Return-Path: <linux-man+bounces-3262-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA7EB03654
	for <lists+linux-man@lfdr.de>; Mon, 14 Jul 2025 07:57:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8A79B1713D1
	for <lists+linux-man@lfdr.de>; Mon, 14 Jul 2025 05:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F89B20C004;
	Mon, 14 Jul 2025 05:57:11 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from newman.eecs.umich.edu (newman.eecs.umich.edu [141.212.113.151])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60C9E1F5838
	for <linux-man@vger.kernel.org>; Mon, 14 Jul 2025 05:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=141.212.113.151
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752472631; cv=none; b=ce2o0gEMkP4/atLhOs9RVvM14hwFNtbPjKsC6XTc6tiMyVehGwuMtHWCKQzDbfIrYeO0u7uoNfei2kDyUpPtoaLZuUFRRID8CyxAivew07a6VlYrUFKNfv6GNFDpjq/L5IUlRDrXueJ0EAs2ltOrmeJUzynIqVfEt0yW8aJs7tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752472631; c=relaxed/simple;
	bh=aYopudKFiBBGLIKuIn0YwalMVgPXob4Md1D71vipaqA=;
	h=Date:From:To:cc:Subject:In-Reply-To:Message-ID:References:
	 MIME-Version:Content-Type; b=ontdK28/053Lg5bLnMsw5keZppwsBDJajig18dzdz57ZH7KmT3ix29I+a94XqPSraoKV3/hZLX1uzSshs/QQoW9lWlvX3V6LCFVjhZdmxq47gsKNPETPakIfKSDLzHl6mocjVlyVkejSLGx8W+lrrHPMBM6Y4AUTBkY+60lSSCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu; spf=pass smtp.mailfrom=eecs.umich.edu; arc=none smtp.client-ip=141.212.113.151
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=eecs.umich.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=eecs.umich.edu
Received: from email.eecs.umich.edu (email.eecs.umich.edu [141.212.113.194] (may be forged))
	by newman.eecs.umich.edu (8.15.2/8.14.4) with ESMTPS id 56E5uscF1638024
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Mon, 14 Jul 2025 01:56:54 -0400
Received: by email.eecs.umich.edu (Postfix, from userid 36916)
	id 0F65B12A02A0; Mon, 14 Jul 2025 01:56:54 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by email.eecs.umich.edu (Postfix) with ESMTP id 0ED7812A0298;
	Mon, 14 Jul 2025 01:56:54 -0400 (EDT)
Date: Mon, 14 Jul 2025 01:56:54 -0400 (EDT)
From: Terence Kelly <tpkelly@eecs.umich.edu>
Reply-To: Terence Kelly <tpkelly@eecs.umich.edu>
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: Re: for man seccomp
In-Reply-To: <ima6z2tqxkogu4zevqd2dww6oglouienk26qa25nk2sjere5h5@3ve4lzz2utgv>
Message-ID: <362e7213-7432-0624-45a6-d0346207ab20@eecs.umich.edu>
References: <45c2afdf-729d-d137-e15a-074123f5c87b@eecs.umich.edu> <4oxc4pfspkqg3v7exajv42lw7s6tgy7xcji2yjyx2bi6b3pcya@sl7bllkflzcg> <259aabe5-aa71-5165-8ec1-f55baa04036e@eecs.umich.edu> <ima6z2tqxkogu4zevqd2dww6oglouienk26qa25nk2sjere5h5@3ve4lzz2utgv>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; format=flowed; charset=US-ASCII




Hi Alejandro,

Will reply to your latest on Monday; it's been a busy weekend.

Thanks.

-- Terence




