Return-Path: <linux-man+bounces-3032-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0E5DAC4EC1
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 14:35:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DE9D17D07F
	for <lists+linux-man@lfdr.de>; Tue, 27 May 2025 12:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15B71253F15;
	Tue, 27 May 2025 12:35:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="OBDU2Jgk"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37C57240604
	for <linux-man@vger.kernel.org>; Tue, 27 May 2025 12:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748349321; cv=none; b=gbUt2jYz68yZkku/T8Va5MwA9WAAvhiKuLrm443HayseuriesU9bJjjdIojyQvCZQx0+ir/Oj6+DL8jaMxtlam+jCOdZuONrZj6hG+vrQnUP9n03Xy0mJFgpLpWQaIuo4LZ3jJw/8zcDYZBf0cn69LQ++Iinb2xQMbfyQXw9NjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748349321; c=relaxed/simple;
	bh=DbjWLsC7xAW5nz1iCjHEO6hXJ6++6oVqpv9yw/9rmSc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A7hqfxM0sEBqX8M7Ak+ho43Itl5wIeYOXlq/iwfQ2/7F8JQxuz+4TIa+vofTSmnkAMsFJzAOqMgrxK4yP7j4qUAxpryVWqHBbYkqJmY1HshF5+bTfNxWPSEHT6MJ9fAQdWnaPKTwmDnqox7ZLmD4QrfMO4M9XKcIDUX2Ayjxup4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=OBDU2Jgk; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1748349316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=YK4ZskRAwQVpMv6l91Sv1yPuIYmCJmGb199AIrUpoOs=;
	b=OBDU2JgkABgQlg04eZcsQrwEkrq/SiLtDJ14ryN1t5D5kj6UnUiNY+bEZ6v+iD55dyVtJo
	93EhjG58xGHc7x8wXbeJ/iKsNjOpsSpMvQy/w+yYg3U3M997Mrg282Dh8KKuv5I2y1c8Wt
	KkjWTCTA3MuH5flPxr9Obe/r1BFuwhs=
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com
 [209.85.222.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-63-9YgMBBLhPm2H4DFuQjDtBA-1; Tue, 27 May 2025 08:35:14 -0400
X-MC-Unique: 9YgMBBLhPm2H4DFuQjDtBA-1
X-Mimecast-MFC-AGG-ID: 9YgMBBLhPm2H4DFuQjDtBA_1748349314
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c579d37eeeso423335485a.0
        for <linux-man@vger.kernel.org>; Tue, 27 May 2025 05:35:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748349314; x=1748954114;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YK4ZskRAwQVpMv6l91Sv1yPuIYmCJmGb199AIrUpoOs=;
        b=lNdZBhXPRkJ16zZoPUxZHN5oBHmHHb7huGx1I4CcPTiPa2chth2yc7Q4MyZUdexnpt
         wzpiwsQnJhGYn6jPYgzL0wzyLr7nPasOzxgl1wAdk57ehaE4A5Lw98bQrtvqG1jGjSk6
         73E3Oxu4Ry5GrPsXAlTc39e0UXA5KxFBE8ZuqwqVxxu6v3slE517WlmzgUjUamB1Haz4
         8d6SJm7ZSKYy+adMOGrGVX/hJbXsqfaQ/Ofsxqcaq0/CWW+SliBjPVN13MSBd8R1cAmm
         so7pU8mm8sFVugY9NqVjXq+c1TxWpJUq2fj+mEwa8rJnmW0arHdX3WU5HknFJDQCFl3Q
         5Vzw==
X-Forwarded-Encrypted: i=1; AJvYcCVz2LE6yN9KpX0JYZ+VPci2osdkTsnWzNANS4+9pvEg9H9O81Q1csc0lQ3G7Leqptk4ewDm9kFC/Rg=@vger.kernel.org
X-Gm-Message-State: AOJu0YxBWwgutTFSv02sYyR9b4jqtic3jO027yOdnYNWVrH/ueVtv6AS
	aaImsPxGGDKDLBu/pK9fo7e/yBwfnOGzflfUoDnAjQoeAn5lmIdoHBw37rd7J9M0ZF8lNN4hfsr
	x7kQKP+tByRL41irH8cghGPrmVf/XVRzeIYOd1yMDk0XPDcnWmxUDx90XSyZGnA==
X-Gm-Gg: ASbGncsQ/O6BfV7WoWm39H0MvtEu+w0GTPWMgxmIJ04nPY4xnLAG6H4FYEumXqw5Hys
	6azxcDwF+aOt6eZWwXVNewn/dAn9YAbgVPZugNfwJNOFP7I7g+szhUxyGHgqpi8edFCmTj5pQ+9
	3d+LbL63DQFbF0Luz13T7TAHqZgkrfN1TYnlgIw+Mo8DE72c1svk9sHGKcqmQk3F0LUPaAcsTd/
	Q3cBCn/Oke0IEvnY/7dB4IGehp9bBAX9rHW2xFZoxzhef4DOyIZaQXYEcIt5+Iz1X7TsWC0u2Lt
	r/wzR2jk6jsK
X-Received: by 2002:a05:620a:1707:b0:7c5:54d7:d744 with SMTP id af79cd13be357-7ceecbd02dbmr1707538285a.23.1748349314192;
        Tue, 27 May 2025 05:35:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHpLjTUxiBHxZRAOxCLTdSh5+7qqdSsPB2sN74hUSZ3uh1WvHeoQ0LA28kiVPupzbX42ouy7Q==
X-Received: by 2002:a05:620a:1707:b0:7c5:54d7:d744 with SMTP id af79cd13be357-7ceecbd02dbmr1707535985a.23.1748349313895;
        Tue, 27 May 2025 05:35:13 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd468eea94sm1715852885a.117.2025.05.27.05.35.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 May 2025 05:35:13 -0700 (PDT)
Message-ID: <a8506c35-4226-48e6-925d-38c43983ed42@redhat.com>
Date: Tue, 27 May 2025 08:35:12 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: bug in futex.2, FUTEX_CMP_REQUEUE
To: Alejandro Colomar <alx@kernel.org>
Cc: =?UTF-8?B?SuKCkeKCmeKCmyBHdXN0ZWR0?= <jens.gustedt@inria.fr>,
 linux-man@vger.kernel.org
References: <20250527115303.3304206e@inria.fr>
 <8b77ea67-2662-411a-83c8-e0e23755244f@redhat.com>
 <xea5hgyrqs7uktyp7awn4d7l7nn64k7jprrzcuwohe4iixxglx@fmyt2rav6myd>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <xea5hgyrqs7uktyp7awn4d7l7nn64k7jprrzcuwohe4iixxglx@fmyt2rav6myd>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/27/25 8:23 AM, Alejandro Colomar wrote:
> On Tue, May 27, 2025 at 07:30:09AM -0400, Carlos O'Donell wrote:
>> On 5/27/25 5:53 AM, Jₑₙₛ Gustedt wrote:
>>> Hello Alex and everybody,
>>> I stumbled upon this confusing text in the futex man page
>>>
>>>     Typical values to specify for `val` are `0` or `1`.  (Specifying
>>>     `INT_MAX` is not useful, because it would make the
>>>     `FUTEX_CMP_REQUEUE` operation equivalent to `FUTEX_WAKE`.)  The
>>>     limit value specified via `val2` is typically either `1` or
>>>     `INT_MAX`.  (Specifying the argument as `0` is not useful, because
>>>     it would make the `FUTEX_CMP_REQUEUE` operation equivalent to
>>>     `FUTEX_WAIT`.)
>>>
>>>     The `FUTEX_CMP_REQUEUE` operation was added as a replacement for the
>>>     earlier `FUTEX_REQUEUE`.  The difference is that the check of the
>>>     value at `uaddr` can be used to ensure that requeueing happens only
>>>     under certain conditions, which allows race conditions to be avoided
>>>     in certain use cases.
>>>
>>>
>>> This has several issues, the most severe beeing the word `FUTEX_WAIT`.
>>>
>>> - How can an operation that only does wakes, ever be equivalent to a
>>>     wait?
>>
>> My opinion is that the text is correct.
> 
> Hi Carlos,
> 
> I disagree.  Let's see FUTEX_WAKE and FUTEX_REQUEUE side-by-side (to
> ignore the check of FUTEX_CMP_REQUEUE).
> 
> 
> 	FUTEX_WAKE:
> 
> 		long syscall(SYS_futex, uint32_t *uaddr, FUTEX_WAKE,
> 		             uint32_t val);
> 
> 		Wakes up to 'val' waiters.
> 
> 
> 	FUTEX_REQUEUE:
> 
> 		long syscall(SYS_futex, uint32_t *uaddr, FUTEX_REQUEUE,
> 		             uint32_t val,
> 		             uint32_t val2, uint32_t *uaddr2);
> 
> 		Wakes up to 'val' waiters,
> 		and then requeues up to 'val2' more waiters to wait for
> 		something else.
> 
> If val2 is 0, then FUTEX_REQUEUE is equivalent to FUTEX_WAKE, as Jens
> said.

I see the confusion.

The parenthetical does not clarify if it is talking about val or val2,
though they follow on from such comments.

I interpreted the parentheicals to carry on a set of comments about
val==0 and val2==1||INT_MAX.

I agree that if it is a parenthetical about val2 alone, then it *might*
be equivalent to FUTEX_WAKE, but it also might not be... and depends
on the value of val.

The clarification here should be about the value of val and val2 in the
parenthetical.

-- 
Cheers,
Carlos.


