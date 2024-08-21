Return-Path: <linux-man+bounces-1641-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8553595A49E
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 20:19:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CECB1F23384
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 18:19:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F8CE1B250D;
	Wed, 21 Aug 2024 18:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WvMRZo77"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B3994085D
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 18:19:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724264347; cv=none; b=E6uPG7J6w8Evx/2xbONllUGVJafAIXbC1kEu/+c11iRrHjSyfRevbg+uQrQXBdBV+Jf9RUOqaEhv5tbaaM4zWTStgIJrpQGhuIlKpJGRTNsQybQi8kPK3tROjEtdSdOmd3SQK6S6PyBP/w7+WSgdghPUIh2qFfsTNHgxCa23BxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724264347; c=relaxed/simple;
	bh=4RUYE3yBvOM8fABXTSab92N/58hXuo+N7fjBWcNIumM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ddqHvwUQ3bCgh7B5VReXmPp3ea6aBAxsn1ha/PQL+qB/+3P1TT6Vdl6TwPkjFDJQIexDn2FRlXqoAZGuS4Axbe4zeV7h6QgQAEOQWpGEijBg4lLNoUD2sctm9PeFnOVMpdGMW5HUWEH87qpR5DgRkSmN3SoE9EQ5ejVj3AGnEg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WvMRZo77; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20203988f37so51642945ad.1
        for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 11:19:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724264345; x=1724869145; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=AH6yJ03jVldrCSmrfJT9rxe8oEq6aqbvLrOnA/OWbZI=;
        b=WvMRZo77FGIP5+iNTOy6ZV7rm8wh8uDkR6YKRKW8dRR1DC1ZrOgkRzGvUL2o7sWEJl
         APN/FvwGmSYVLJzzmFBoki97zJDG7CVNh4ofov/ppgEw3B6hYQHoJk7j00MdbxI8So27
         wgZ/W0sx3t5n1ztv4Ex48s/UxQj5X6s9mQxo58c/ryXuBNecorP1Fg2xwkTID8tDL7eM
         I02cfHxzBaEmanDSTyF5FBfOh0NjDmbi3r7Gv0OX/cjzS4CZoOiBaQdlF9FuH2WMNEUc
         epBSlp/dfg2quiKrVWV1y+xYytkW9QBQluJZqil6k1tlJnnx2WqZqWtDvuDgdPL34i9n
         u/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724264345; x=1724869145;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AH6yJ03jVldrCSmrfJT9rxe8oEq6aqbvLrOnA/OWbZI=;
        b=lWI4tQNhlC9vw6kTd0UVi+o4c7LtKI305aczRxOwraO8bLTU2hVSCt56r22eLZlQH8
         kRxLyguINmKmRmVkJHFZ4C3DgiMTvKACQLt0ypjE+b+xeC1JAgXjuaU/h7VlnEqa9wnA
         ytFwK048Uz5S+cQgLX15Ih+XdKxG9N9ITzVDMjceYIcAv60geWxbQZKiTCmuLEVMIjP+
         lQBK7EId1hiA50Pox1DAinBDeEd0h9rRN/JKNzX+3+23zXItZPMvRf0VpyMM0v1gxXD/
         a8EgfjwhMroMArLuHCcQnebSTZnkCQYZG+HuTEDWW6grIcRvrlaPDUGq/kpX8dA89Upd
         3T5g==
X-Forwarded-Encrypted: i=1; AJvYcCWL/epz2dV5/t75UIqtlibcQu+GNMD1smlgPLkysObdFDHFFFb3B7kqwjqQ59nHnGNRpWsKRgjCiGQ=@vger.kernel.org
X-Gm-Message-State: AOJu0YypO5OvXY/zEt4SM9P16yU+JQa2PndUzJr1vZng1ZbIkS7+cfoZ
	NvCipCp4oBpt20qe3yB3bwqGl4DLnrQo/GgT2AmHUkSQjLOPgJ7KjplRpyyo0ME=
X-Google-Smtp-Source: AGHT+IEetFy1WiWGu+anb/PkDMUX2Ig1FPI3MYbjPxiIpIVTo/ovHZd2i7qjgnZies7JpfxYPZFofg==
X-Received: by 2002:a17:902:dacc:b0:201:fd3c:a321 with SMTP id d9443c01a7336-2036820f9d4mr31914325ad.62.1724264345471;
        Wed, 21 Aug 2024 11:19:05 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c2:d053:3878:74ef:f4ac:ffb9? ([2804:1b3:a7c2:d053:3878:74ef:f4ac:ffb9])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f03b1871sm96650225ad.302.2024.08.21.11.19.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Aug 2024 11:19:05 -0700 (PDT)
Message-ID: <138cac72-3ec9-42c0-9c1d-982aae975fc3@linaro.org>
Date: Wed, 21 Aug 2024 15:19:02 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: arch_prctl()
To: enh <enh@google.com>
Cc: libc-alpha <libc-alpha@sourceware.org>,
 linux-man <linux-man@vger.kernel.org>
References: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
 <937dcbd1-69c3-48ba-ada1-6b25e5381672@linaro.org>
 <CAJgzZoq+PgP71mP3XBnJsiD_wr58Z-7mAix7NxBWV2K_=0cxKA@mail.gmail.com>
 <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <CAJgzZorYAxxxa0+RFz706ip1J97hz0oDz32et_FONMu-bLpeKQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

I would use either the kernel interface: 

arch/x86/kernel/process_64.c
961 SYSCALL_DEFINE2(arch_prctl, int, option, unsigned long, arg2)

Where is seems to what most caller do, or maybe something like:

union __arch_prctl_arg
{
  unsigned long addr;
  unsigned long *vaddr;
};

int arch_prctl (int option, union __arch_prctl_arg *arg);

The variadic syscall wrapper has caused some trouble in the past,
so it would be wise to avoid it.

And for constants, it would require a x86_64 specific sys/prctl.h header
with either the has_include tricks to include the kernel one or to just
copy the kernel one (along with possible a test to check the sync with
kernel definitions).

On 21/08/24 15:09, enh wrote:
> it also looks like the relevant constants (such as ARCH_SET_FS) are
> only exposed in <asm/prctl.h>, which isn't currently transitively
> included from <sys/prctl.h>...
> 
> On Wed, Aug 21, 2024 at 1:59 PM enh <enh@google.com> wrote:
>>
>> i wonder if part of the problem was wondering what the signature should be?
>>
>>        arch_prctl() sets architecture-specific process or thread state.
>>        op selects an operation and passes argument addr to it; addr is
>>        interpreted as either an unsigned long for the "set" operations,
>>        or as an unsigned long *, for the "get" operations.
>>
>> On Wed, Aug 21, 2024 at 1:39 PM Adhemerval Zanella Netto
>> <adhemerval.zanella@linaro.org> wrote:
>>>
>>>
>>>
>>> On 21/08/24 14:02, enh wrote:
>>>> i see glibc has a _symbol_ for arch_prctl(), but there's nothing in
>>>> the headers? a variety of projects seem to `extern` it themselves so
>>>> they can use the glibc symbol, even though the man page denies that it
>>>> exists and suggests you use syscall() instead.
>>>>
>>>> is this half-existence deliberate, or should it be fixed one way or
>>>> the other (adding the header declaration or removing the symbol)?
>>>>
>>>> i notice musl is the same, but i assume that's just for glibc
>>>> compatibility rather than an actual decision on their part.
>>>>
>>>> before i copy the same oddity in bionic for
>>>> https://blog.chromium.org/2024/06/building-faster-smarter-chromebook.html
>>>> i thought i'd at least _ask_ :-)
>>>>
>>>
>>> It seems to be a overlook from when it was originally added (a47fd6810cb).
>>> I think we should add a x86 sys/prctl.h with the definition.

