Return-Path: <linux-man+bounces-947-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 535B58CAA7F
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 11:09:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8B941F2275A
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 09:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A94B56440;
	Tue, 21 May 2024 09:09:11 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from alerce.blitiri.com.ar (alerce.blitiri.com.ar [49.12.208.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A298D56760
	for <linux-man@vger.kernel.org>; Tue, 21 May 2024 09:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=49.12.208.134
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716282550; cv=none; b=SBRTww3rZBvn8LFDYSLThXsjJ/KGE1ToChrFoznS6ggeKdrlcDeuuapFT7qpqkYnWCJUwF8VRHtVxXrO+hLaPxeD9fqJ4uIZnw4cZ95MnsWe53HKEJtWLuLL3vP/GKTheqY8P8mw4/vTIAzmY1wTw8T7E7MC9rg/n/64p4eb7rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716282550; c=relaxed/simple;
	bh=lQK7PjS75mWspTWLWtOM+LkAS/GdsdpfwwU0hP/pqwU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HfIfxUH4++fktUlYEWhQGOfYs4H6q4ffq4bPr+qREmtf8oUVjqiMzBKy+jcrUa0UTuKOjPVFCAiW86gKbL7z2ko6OZRXbjObRYLVxk3cIRBFNf6MtekZ0SywCAs0Qp7fuhxfF6CLCo39JLPjQsZYPRghO/mCiKTEgecNjgYF4GM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar; spf=pass smtp.mailfrom=sdfg.com.ar; arc=none smtp.client-ip=49.12.208.134
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sdfg.com.ar
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sdfg.com.ar
Received: from [IPV6:2a02:8109:aa26:4b00:1a1e:9a1e:44f7:a3cd]
	by sdfg.com.ar (chasquid) with ESMTPSA
	tls TLS_AES_128_GCM_SHA256
	(over submission+TLS, TLS-1.3, envelope from "rodrigo@sdfg.com.ar")
	; Tue, 21 May 2024 09:08:59 +0000
Message-ID: <60e07e4b-3cbf-497b-aecf-bd482bb4974f@sdfg.com.ar>
Date: Tue, 21 May 2024 11:08:58 +0200
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] mount_setattr.2: Update supported file-systems
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20240409141046.124979-1-rodrigo@sdfg.com.ar>
 <Zh-6YjDhSBUNKmqP@debian> <b52c03a3-bc07-4358-aec4-9728f213d31e@sdfg.com.ar>
 <Zi93EAyeU4byltGB@debian>
Content-Language: en-US
From: Rodrigo Campos <rodrigo@sdfg.com.ar>
In-Reply-To: <Zi93EAyeU4byltGB@debian>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/29/24 12:31 PM, Alejandro Colomar wrote:
> Okay.  I've applied the patch.  Thanks!
> <https://www.alejandro-colomar.es/src/alx/linux/man-pages/man-pages.git/commit/?h=contrib&id=8ea186128f96d6f8912e05c95544734004618827>

Thanks!

There is no online html version of this, right? Not even after the 
recent 6.8 release?

I'm asking because I would like to link it in Kubernetes documentation.



Best
Rodrigo

