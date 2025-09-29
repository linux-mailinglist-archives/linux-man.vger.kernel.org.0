Return-Path: <linux-man+bounces-4005-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 658A8BAAA80
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 23:42:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A3E03C091F
	for <lists+linux-man@lfdr.de>; Mon, 29 Sep 2025 21:42:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F347124111D;
	Mon, 29 Sep 2025 21:42:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="e7fgRxdQ"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E70D1FE451
	for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 21:42:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759182122; cv=none; b=TC1MYbTpsWcuh0Bg4Hh07C/Zun9UoQodOvnRdZFOqJvHpdoGaGjt2MW64SGrerIdf+vsCgZZCU4TqMJH9znWWkzDefXOHTKTo8/CY6ruYVuZTLxqyYcbu+hIogBBah0aeXvGg79cFkwlliWEBuunlVHNIjMOgRVWtwEOCyGQGec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759182122; c=relaxed/simple;
	bh=dRNaQcptkLd+ZmCacJciIKp3vIpv3W1vPXV/2XO5YPA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VrXMev1n732VcsvGQE++gbcKTpYYGiilOra4UXmZCV2tRDiZeeBq/g0gI6RtQ5sfFWnzWj6aEYzf0e0CjHo1STYG9CBef7sExwRf509omFV58Ie0PEEHn3QAHl/2y0BlMDtzyAGXaDJ9EeSlcaJenTdGUBmzc49X6EIMPFKix18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=e7fgRxdQ; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=draigBrady.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3f99ac9acc4so371177f8f.3
        for <linux-man@vger.kernel.org>; Mon, 29 Sep 2025 14:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759182119; x=1759786919; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=HXTgjatpVryrddJkagqOKxGmKIvXJyvfLY6RdG93+F0=;
        b=e7fgRxdQReGm4KLsa8kJUD+E34xJCB9A/UIWR5YFhFfYLl0FlyiZd9WBt7grYSOo0h
         Hh4ucExNeLb1+sQ/mHlfUwg3LlYbJJMBN26fwfIXi2S+gzIaximfT1RuHGC6oFC4XOk7
         z37jR7zMAupcqlxDBTfqtdxbGOqsNV6pfGgA/e3BSKwdpovl0mYj50ixz/07zRyOEapk
         OrG3rLPOrq6wJqywcvQ3oRraQtdd5NCfoveyXKz+hzPO2x/+8Y2Hg/SXt+qSTzGVt4lu
         oOM/rfh88YUMxauOyggRNHnpTmzi5vbN+EUJg0j/fDz7eObvGsmXmF/38BswoOMPRw3Q
         DMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759182119; x=1759786919;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HXTgjatpVryrddJkagqOKxGmKIvXJyvfLY6RdG93+F0=;
        b=GQgzrvT9u0Nky3wwzWFuG8zCNXGwilcc1C6uLxR8MHOPZgk40l7QRg32SKRMh09HWE
         24PM8ujtbOj9l5gLy7xQZzmuETEBGhEO9WdDxZjVlbDm1F++t7NIp+QhbiKQ4vuisBJi
         z46LnrOU9ryccgW6H5mnXgrfKa5TncWgh4R82vuP4arU4G9X8/1ijRPPG6xS/KyIzCzI
         Bf13L5tbRYjyFTeeW4dem0y+6LfbKGoM+YpsKLwoXdVmnjWJOAa6i5r2zWfpjtS8IO4X
         sSDOrkWkNXZW9jmGBESiOEkYbwjtScq29UyjxNxIR/Pmb3bQMPYwFPb0R56xTj8EKWaV
         qRzg==
X-Forwarded-Encrypted: i=1; AJvYcCXUg8KpIWZiJnEtJVXk+35+fQSiINT1+zqJi/J2V20lcG912ZIWuSrzOrS4v9kf3qxKeHKJbRHvIXs=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1bRO4RcpYPOHaDPQcjd4cszumhkOV6yXugcheAm7D8eVZFkci
	v6/QHdWcV05VeyFVvPA2lfQku+I8l5zvce7wmWx26TATGDtld5uLmi5A3BQexg==
X-Gm-Gg: ASbGncsO0qvM5xe90JmqLHkGZKYxTr6lCJ8E8RAM5Sar9BU0iq7zI6yNq5g8Td/HSGo
	CLEE4m/GVfbRnZiIQGLlv2Ni4jTRI0eN5CyyXMmxzVwWGAag0Al9buyLElshFexkJuIRt1TtUFk
	kzWOlkFHXy2GL/NsRbdf5mGxsF5tl4Vk1IPQcfEthHseK2glDkDsBogDaPCvCAlfE3+DrxJK47V
	GBQB/A2j9L4TZb90SlmpDMMzI4mq9as/AwbNiLdjlQ91awdvTbddgyh4nO+OhZh/CV4nCihs8iv
	FKR9Z4F8SiGPH99RBhDdMjtByE/4+NaoUCkRo0EEvtO9Gn1qDdcOzaQn+f/6zpVYZKgUwa6M3tU
	2WO+Gsjcw/WAq5XYh3uABUMb1uUKKU6iT3XjTsiy2xedjyDY8hTvSmJUuIXjybSL5ddEJcZONDP
	6Pcxo=
X-Google-Smtp-Source: AGHT+IGL5QBn4z26Y0A6u2QeCtHjTf52q2rp+DJ/eEtjVRaiP1n0d/8EZoQX+c+LPr87c9zkpcqs+g==
X-Received: by 2002:a05:6000:24c2:b0:401:ae97:a1a6 with SMTP id ffacd0b85a97d-40e458a913fmr16897699f8f.26.1759182118488;
        Mon, 29 Sep 2025 14:41:58 -0700 (PDT)
Received: from [192.168.1.31] (86-44-211-146-dynamic.agg2.lod.rsl-rtd.eircom.net. [86.44.211.146])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-40fb72fb2eesm20350618f8f.12.2025.09.29.14.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 14:41:58 -0700 (PDT)
Sender: =?UTF-8?Q?P=C3=A1draig_Brady?= <pixelbeat@gmail.com>
Message-ID: <530c7a63-22ac-4d4b-a67d-09b21086207f@draigBrady.com>
Date: Mon, 29 Sep 2025 22:41:56 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird Beta
Subject: Re: Move GNU manual pages to the Linux man-pages project
To: Alejandro Colomar <alx@kernel.org>, =?UTF-8?Q?Arsen_Arsenovi=C4=87?=
 <arsen@aarsen.me>
Cc: coreutils@gnu.org, linux-man@vger.kernel.org
References: <wqfzoyixsh4l3wg7tkz3c4bjejy4wlski2s5g2pwoqiy2wg3ty@lkqy5semt757>
 <87jz1sm2t3.fsf@aarsen.me>
 <fziyxvozscytwasmhtrpjfqbmldxmggjkdm4pzo7cupxhby422@czrmkask4xsc>
 <87cy7e7hml.fsf@aarsen.me>
 <sdprfcwwtirbygpx4pqcavchf7hl3ichxjcxsr6kn6pl3f2ri6@7mshrxxpjhn3>
 <86frc5zj4i.fsf@aarsen.me>
 <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
Content-Language: en-US
From: =?UTF-8?Q?P=C3=A1draig_Brady?= <P@draigBrady.com>
In-Reply-To: <avcjkfibgplayxdpe4nisfpmtmlwdaubesdo6oj5qj2sxfqpsr@iypkg4k2fauv>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 29/09/2025 11:33, Alejandro Colomar wrote:
> Hi Arsen,
> 
> On Mon, Sep 29, 2025 at 11:46:21AM +0200, Arsen Arsenović wrote:
>>>> Unfortunately, it is.  A collection of linear mostly-unrelated pages in
>>>> predetermined shape simply cannot document complex software, a
>>>> hierarchical approach is non-negotiable.
>>>>
>>>> libc, (most of) the syscall API and coreutils are a lucky case in that
>>>> they are, fundamentally, large collections of *very* simple bits
>>>> (functions and programs),
>>>
>>> Luckily, we're discussing the documentation of coreutils.  :-)
>>
>> The subject said "GNU" so I was intentionally speaking in generalities.
> 
> Oops, I intended to write GNU coreutils, but it seems I accidentally
> omitted coreutils.  My bad.
> 
> I'll start by importing the GNU coreutils manual pages in a branch of
> the Linux man-pages project, to be able to work on them from time to
> time, and when I have them in good shape, I'll propose their inclusion
> in GNU coreutils.git.  Does that sound good?

man pages are not currently in git, only distributed in release tarballs
(for cases where one can't generate man pages on the build host).

So any changes would need to be merge back into the utilities themselves,
so that their --help would be consistent. This issue would be multiplied
with translations. So I'm wary of a separate man page repo TBH.

Perhaps we could have a 3 tier setup with --help showing very summarized info,
man pages for more complete discussions, and info/html for the full docs.
I'm not convinced of the need for that though.

cheers,
Padraig

