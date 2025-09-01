Return-Path: <linux-man+bounces-3824-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF76B3ECD7
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 19:02:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2ACED4826FF
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 17:02:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBA68302CB4;
	Mon,  1 Sep 2025 17:02:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Rr6k88GV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE2E2D5952;
	Mon,  1 Sep 2025 17:02:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756746125; cv=none; b=PodBlS47HlxKvDfvZc6M38blKAczbXH5FkRcqWd6rWOGW/iyPAuZt09szC7fAjVa79c2lBGNTkFaYkQYfTqZh797TkN1XMmOGsAHJZpO3UUheUkXi4gIZVsSgfQkDsC7vAKeK1Feavjb4UbEui4OXnwN04LVcjP/gyfDRbjbEnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756746125; c=relaxed/simple;
	bh=J2L6IOIBS5H88YcjwaA+pmHj6LZlputpHNp8msGnmnc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eWR/Kf7GccC5ombQomqeldZvS8DCteT2OcaPXsdE5nu4/zVhM6rMGgLbP9NdHaAwNcnSKTlFbRnEI2PjeQJkOB9wu+6ypkPa+ZRdyKp/Aiib5Dtc3ruxNAGmEKcZHNjREWFJDtvl07/+hTPkPaqvIUi08LAKJ2hwJaNcFW0JfTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Rr6k88GV; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-45b88bff3ebso10278755e9.3;
        Mon, 01 Sep 2025 10:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756746122; x=1757350922; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FRQt+UBjQqYx5yZNwHJXOb/IQAikJ0bwHOaWGViIuvc=;
        b=Rr6k88GV7yShDbIeW632W/F95sONyG/CrGlORotBT9fLWUuunUBdByzVmOkHdvqUC9
         V8Cm5lPdeppazoDf4B8+njGKReFI9ZF9ZzkMxjPDJM3ee0zMhZV4ZDeZ5hxj6fGhrifF
         6p0b3NHV+08P7ezU2FxPftRbQVDf/jZXzFNIek015338roxRS2H7FUl9ZOfIyDl4Apwr
         miMi5pj6NMkx5t7ebrqe6/oKk6PQoW9X3JCXBDL57nYrzCvRxWmE7wfc6WzAIQmNsVBP
         PAOtTuQJhnYxbCqL7rCl4VRG3zXOkLNqKduVRcER49qyAZluzJ0DWPoFykbTp8/Wr5oY
         eYFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756746122; x=1757350922;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FRQt+UBjQqYx5yZNwHJXOb/IQAikJ0bwHOaWGViIuvc=;
        b=PzgPD1BOloKrA50Jyo5DhqL24cHSiOqIr2TxRxM41+KAs7xArTR8T1Gw7IPUaA3n/L
         D9IRalbHC+NJlB6Il2EhSvIwycwjlpLlEuUF3YOkwpSyU/sNhFwUb7C5Jw24sk+Y0TZe
         oQmJaPMj8yUSBJEiBNqDjHUbx2lXFMMALOzPkLb0rr0DzZsADSU800DQZpAcL6ACLan/
         74yu55iomKba724NIRVlpSlWUR5DXDZ+1L8OePaKB1fcuIqP7VOMmDpxVcOQRD1ubGCo
         Zphzb5xkCHhM11ekXWuTJ/a3BcFiCG01h4VYe0HTtMF6I7H/kGUALc0L+8Z7Q1RhVPhK
         8FjA==
X-Forwarded-Encrypted: i=1; AJvYcCWWzNzdjCV/1KCMLJAHnJefxaJnnwyrpwHgnRwEnMk2JNwQdPGjzCW1K9Fnf1mxS0eL3MKg88VpaSknzNA=@vger.kernel.org
X-Gm-Message-State: AOJu0YyY/TO7K7GNRTlLOZ4Wdco+NXxTzvXevIpBnpYZZ1UePeYUOd91
	yVCOgNyBLIKn/l1t2SoUGjAddf7jNlMfTyR/RtEBUvwZrrlzncrdpEOvF+5oweSQ/5I=
X-Gm-Gg: ASbGnctD78QhK9ZGnX4GC4zdZv48yQRhS8TvoV2EZGCrYZua85fIlnAiamEovOlyYao
	26XZfoL5KCyufx8kZIDc74MjoZbjhJK+sdpyhbSw3uZszwWMtJ/D/zqOQ6gbCMdclrlOnptZopg
	RY5iDj7WO8WCfbuVWbuUnzR7Y18w4Vsf1Mrf92hpiWxWDBY9bmZW1YPk6hk/zSaHUQQRMQwERAH
	kbzS+r8jijL6APkDIkF9N4of1xzkpSK5lSDvg88XsYnmhaj2/Byn+CkrB+GYRdGue/Ek9McZsO5
	lVpTdg4eh1XheGfe/g6UFtqgx9OkHVUw+UDV+5q7pvtxjyot8RIGXZlOZMHs6cgglnR/KDqtUn3
	e3sDlTLtdx+Vlyt5TmZsT2WrLIunD8DjmwWcRSXJjCNae/FOPXaCp9ykEuh0yueKVyegax0I=
X-Google-Smtp-Source: AGHT+IHf0yGAwvn6kTkWxs2CIz3j2eE7QTqYFeY9RVdyHB7EJ2fftTATOlO8hfqqnwhVRGHdv87Fyg==
X-Received: by 2002:a05:600c:45c9:b0:458:bbed:a81a with SMTP id 5b1f17b1804b1-45b877be05bmr77481225e9.10.1756746122186;
        Mon, 01 Sep 2025 10:02:02 -0700 (PDT)
Received: from ?IPV6:2a03:83e0:1126:4:1449:d619:96c0:8e08? ([2620:10d:c092:500::6:8e4b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0d32a2sm265815775e9.9.2025.09.01.10.02.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 10:02:01 -0700 (PDT)
Message-ID: <ba4acf5d-1092-48f3-9c99-b644a0aa96fa@gmail.com>
Date: Mon, 1 Sep 2025 18:01:58 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] PR_*ET_THP_DISABLE.2const: document addition of
 PR_THP_DISABLE_EXCEPT_ADVISED
Content-Language: en-GB
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, david@redhat.com, lorenzo.stoakes@oracle.com,
 hannes@cmpxchg.org, baohua@kernel.org, shakeel.butt@linux.dev,
 ziy@nvidia.com, laoar.shao@gmail.com, baolin.wang@linux.alibaba.com,
 Liam.Howlett@oracle.com, linux-kernel@vger.kernel.org, kernel-team@meta.com
References: <20250901160903.2801339-1-usamaarif642@gmail.com>
 <d45bfc2d-91da-4a70-90d2-4e0319c5241c@gmail.com>
 <hbwmiqb2qjyf4bemcbg2nwil4oceukvevml4jrilm4q4souv6e@hmjk4ubgavg2>
From: Usama Arif <usamaarif642@gmail.com>
In-Reply-To: <hbwmiqb2qjyf4bemcbg2nwil4oceukvevml4jrilm4q4souv6e@hmjk4ubgavg2>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 01/09/2025 17:40, Alejandro Colomar wrote:
> Hi Usama,
> 
> On Mon, Sep 01, 2025 at 05:18:22PM +0100, Usama Arif wrote:
>> I am not sure what the right time is to send the mandoc changes.
>> The patches have been merged into mm-new for more than 2 weeks.
>> We can still review it and I can resend if needed after the kernel release if that
>> is a more appropriate time?
> 
> No, this is fine.  Let's refine the patches for now.
> 
> Once we're done, I guess we can either wait until they arrive at Linus's
> tree, or if you're very confident this will reach a release eventually,
> we can merge it now here, and eventually fix it if something small
> changes later.  I don't mind too much.  It's more up to you, and how
> much you expect this to change before the actual release of Linux.
> 

Thanks!

Yeah I wouldnt expect this to change at all before the release. The patches
were extensively discussed on the mailing list and were acked by the THP
maintainers and reviewers, so the possibility of the interface changing
is extremely low.
> 
> Have a lovely day!
> Alex
> 


