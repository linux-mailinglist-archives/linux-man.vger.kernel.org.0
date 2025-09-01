Return-Path: <linux-man+bounces-3823-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1E6B3ECCD
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 18:59:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 54FD17A145C
	for <lists+linux-man@lfdr.de>; Mon,  1 Sep 2025 16:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD3CF320A10;
	Mon,  1 Sep 2025 16:58:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UIvc8I6q"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8C15320A02;
	Mon,  1 Sep 2025 16:58:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756745927; cv=none; b=AcRwwYfxYL6kSnwYLnpwR0ZRzUWGRH7GcQslHTFjOrUpHvN5WIvmOsXwd4MONHILTBXcjDwMfLa566MvcIGBfO/LF+xE5/BChDhtXN8K6nhbsdJK00AnBb3/b7rKrVrlkPNwCSTTUjZOX7i+V4L4ZIRF4sQrOCLheBR8b6wOgAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756745927; c=relaxed/simple;
	bh=K0zm68GTxov0wXe6y6Y91HQcC6XVs9Mvru10uVvQ5p0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h34JIMacxsLPoptSC2gBdiKFfHrbb/2wAjdEb3Eip/srIRZYHhq2A9qOgIolTGyq25kPY8Zd91pkVxB7uqY3yz0pRwevjKgrBMT60OhLsRBwI8zuKfPM5wF2R7N1LVjbSQbC0NkrCtZyzjbEcL+rFo+vtkadJq4jBzFCTHb6bbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UIvc8I6q; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-45b7d497ab9so39687325e9.0;
        Mon, 01 Sep 2025 09:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1756745924; x=1757350724; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7JItOdgLR5ewbXV4fusbnqGa1qC5ZXvzXh/D9eLDiYg=;
        b=UIvc8I6qx7XZxd0bP/Oz7rtAEynKba8+YP9sqfS/TejmrvWzkEmkjyowsXlu89RLIQ
         rWxpOG+qCUpH5n+jn4ep0K2dLeVwzqCvmZ7iypYLRxzrud45EwK4VeFO6UQeo85QZQ+t
         PRxa1eXToAsQK1NC6OW+VRtO0V1kyF8raMSV7smcVvNVBwrAqYFBYxmV0IUjBmgwQrkh
         VRqRa0Xm1bG8jv5UeUHsgs/krVFDrTWtmPsmefHBIPXk2QOBNOEJbS4m1t/MfWLp27cE
         COzVjj08gVtR5qorXN6QXkDy4RrNtAIKtBKvpvcVqLd6j6ERZ77Usa+XqEi2dDdrnYFX
         eoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756745924; x=1757350724;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7JItOdgLR5ewbXV4fusbnqGa1qC5ZXvzXh/D9eLDiYg=;
        b=v8qUrCbI+pL6MeZX6PtgxN55mt5MwBXXal0S0wkJ1DaHlZFPgzEt1s7EzmdniTmWwh
         igTfFFJ7jKht3RmKdJGFPAFD82jQ2/lnGZKAUb/g1vqjKzNcWhvbDeDXxIESWTXUH0nG
         5x8WdqOJCjVwxIhXGOrzzzdgSQ6kTF2a6sPvjHySMfYJHM3PsYwCn5ydK5DcOea9U+Bd
         2LHFX474Xl0DApZBdQ36EdNTaoiIp9dzvuN6rDLFqtSK8gwcrZmyvarJKDeb0rw1aiNk
         4J3Cyfc2Yiy79u7yTl9GbqgSO+96PaVHE9trSPTjq0AuKtkWSlBpWwG20E/iJ+PdwAwW
         wtUA==
X-Forwarded-Encrypted: i=1; AJvYcCWkZC8t9IcshDGNthVt6yKY3dyAzWlvf0JuIWgtMW+isvEu0dlKWlBqr1xM3PWCeT1Ae+RcNzGxG3QxeyU=@vger.kernel.org
X-Gm-Message-State: AOJu0YzcPstXDllrNlW7UrBIZs6iOuSeS9804U9y3i4gilUqiB+pnGvB
	QYnNSq2Rs2GNrkx0z4Sbhq/R+ExmroGaLvrLu0QK7LQBTzbG8YWzxhJe
X-Gm-Gg: ASbGncsXq6C4i/Tm5Z8sXKj2BJ3tWhIThuzzRnemRiZhjar/nTdJa7Mc9+yoUwO7Maz
	Q9cnULVlrK+0UE+nOyM0TNZ8h56oD2rypnvTGnzhWXxmZ58JgnxGSpoJF5wUf4Y6B2bg9UAclGi
	SkX+pBGhKMkz0ewsdP+RzgLnrODPxKCyG30zRLB0Y8+fv15+GCz/6IB/ZVcGIyCiOD6x0gSjNuJ
	kpg1L84ue1h8QWmbRg3/WNc1tBzYgAlFY5RmmRr3KCj9DaWKsV/G2ZNtAeqXwI3ldl/CEfVhjpJ
	jFBD+vYZNA4V0sQBDianbSzTLH0YMcW3bjzvNwjschfwsTUn8Z72PCup9RdaQmTjxpo9V5MjzsO
	igERqee7J5pbdTiei3RH1lB7GlcmFxE62JnV9fF7fJKfDUnmTfwUd6Arfea50LAFMw/v4kEhkWS
	sSCRj7YAJGZ20UTBYA
X-Google-Smtp-Source: AGHT+IGyOhk3e3jN/hGEqPyNnB8EVyFUXlzS1WHqdHefnVTqj+KJFjOBagHkuj7au9j333cI8X+BdA==
X-Received: by 2002:a05:600c:1914:b0:45b:88d6:8db5 with SMTP id 5b1f17b1804b1-45b88d694d3mr54123665e9.12.1756745923496;
        Mon, 01 Sep 2025 09:58:43 -0700 (PDT)
Received: from ?IPV6:2a03:83e0:1126:4:1449:d619:96c0:8e08? ([2620:10d:c092:500::6:8e4b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3d92d51982bsm1046743f8f.21.2025.09.01.09.58.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 09:58:42 -0700 (PDT)
Message-ID: <97c19219-6055-46ae-865a-2833d8367db0@gmail.com>
Date: Mon, 1 Sep 2025 17:58:39 +0100
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
 <ejz6kpdn6kxuspktab3m7sjwg3l7eevacoabgroxgsltognb7y@3edyqhpae4vn>
From: Usama Arif <usamaarif642@gmail.com>
In-Reply-To: <ejz6kpdn6kxuspktab3m7sjwg3l7eevacoabgroxgsltognb7y@3edyqhpae4vn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 01/09/2025 17:36, Alejandro Colomar wrote:
> Hi Usama,
> 
> On Mon, Sep 01, 2025 at 05:09:03PM +0100, Usama Arif wrote:
>> PR_THP_DISABLE_EXCEPT_ADVISED extended PR_SET_THP_DISABLE to only provide
>> THPs when advised. IOW, it allows individual processes to opt-out of THP =
>> "always" into THP = "madvise", without affecting other workloads on the
>> system. The series has been merged in [1].
>>
>> This patch documents the changes introduced due to the addition of
>> PR_THP_DISABLE_EXCEPT_ADVISED flag:
>> - PR_GET_THP_DISABLE returns a value whose bits indicate how THP-disable
>>   is configured for the calling thread (with or without
>>   PR_THP_DISABLE_EXCEPT_ADVISED).
>> - PR_SET_THP_DISABLE now uses arg3 to specify whether to disable THP
>>   completely for the process, or disable except madvise
>>   (PR_THP_DISABLE_EXCEPT_ADVISED).
>>
>> [1] https://lore.kernel.org/all/20250815135549.130506-1-usamaarif642@gmail.com/
>>
>> Signed-off-by: Usama Arif <usamaarif642@gmail.com>
> 
> Thanks for writing the patch!  Please see some comments below.


Thanks for the quick review! Its my first time writing a man page so was apologies
if there were some basic mistakes in formatting.

> 
>> ---
>>  man/man2/madvise.2                      |  4 +-
>>  man/man2const/PR_GET_THP_DISABLE.2const | 18 ++++++---
>>  man/man2const/PR_SET_THP_DISABLE.2const | 52 +++++++++++++++++++++----
>>  3 files changed, 61 insertions(+), 13 deletions(-)
>>
>> diff --git a/man/man2/madvise.2 b/man/man2/madvise.2
>> index 10cc21fa4..6a5290f67 100644
>> --- a/man/man2/madvise.2
>> +++ b/man/man2/madvise.2
>> @@ -373,7 +373,9 @@ nor can it be stack memory or backed by a DAX-enabled device
>>  (unless the DAX device is hot-plugged as System RAM).
>>  The process must also not have
>>  .B PR_SET_THP_DISABLE
>> -set (see
>> +set without the
>> +.B PR_THP_DISABLE_EXCEPT_ADVISED
>> +flag (see
>>  .BR prctl (2)).
> 
> Double negation is confusing.  Please rephrase to something like
> 
> 	The process can have X set
> 	only if Y is also set.
> 

Yes, makes sense, will change to belwow in the next revision:

The process can have
.B PR_SET_THP_DISABLE
set only if
.B PR_THP_DISABLE_EXCEPT_ADVISED
flag is set (see
.BR prctl (2)).

>>  .IP
>>  The
>> diff --git a/man/man2const/PR_GET_THP_DISABLE.2const b/man/man2const/PR_GET_THP_DISABLE.2const
>> index 38ff3b370..df239700f 100644
>> --- a/man/man2const/PR_GET_THP_DISABLE.2const
>> +++ b/man/man2const/PR_GET_THP_DISABLE.2const
>> @@ -6,7 +6,7 @@
>>  .SH NAME
>>  PR_GET_THP_DISABLE
>>  \-
>> -get the state of the "THP disable" flag for the calling thread
>> +get the state of the "THP disable" flags for the calling thread
>>  .SH LIBRARY
>>  Standard C library
>>  .RI ( libc ,\~ \-lc )
>> @@ -18,13 +18,21 @@ Standard C library
>>  .B int prctl(PR_GET_THP_DISABLE, 0L, 0L, 0L, 0L);
>>  .fi
>>  .SH DESCRIPTION
>> -Return the current setting of
>> -the "THP disable" flag for the calling thread:
>> -either 1, if the flag is set, or 0, if it is not.
>> +Returns a value whose bits indicate how THP-disable is configured
> 
> s/Returns/Return/
> 

ack

>> +for the calling thread.
>> +The returned value is interpreted as follows:
>> +.P
>> +.nf
>> +.B "Bits"
>> +.B " 1 0  Value  Description"
>> + 0 0    0    No THP-disable behaviour specified.
>> + 0 1    1    THP is entirely disabled for this process.
>> + 1 1    3    THP-except-advised mode is set for this process.
> 
> We should probably use a table with .TS/.TE.  See examples of this in
> other manual pages for how to use that (or read tbl(1) if you want).
> 
> If you don't know how to use that, I can do it myself.  tbl(1) is a bit
> weird.


I tried below, and it seemed to look ok in the output, but please let me know if
its ok:

.TS
allbox;
cb cb cb l
c c c l.
Bit 1	Bit 0	Value	Description
0	0	0	No THP-disable behaviour specified.
0	1	1	THP is entirely disabled for this process.
1	1	3	THP-except-advised mode is set for this process.
.TE


> 
>> +.fi
>>  .SH RETURN VALUE
>>  On success,
>>  .BR PR_GET_THP_DISABLE ,
>> -returns the boolean value described above.
>> +returns the value described above.
>>  On error, \-1 is returned, and
>>  .I errno
>>  is set to indicate the error.
>> diff --git a/man/man2const/PR_SET_THP_DISABLE.2const b/man/man2const/PR_SET_THP_DISABLE.2const
>> index 564e005d4..9f0f17702 100644
>> --- a/man/man2const/PR_SET_THP_DISABLE.2const
>> +++ b/man/man2const/PR_SET_THP_DISABLE.2const
>> @@ -6,7 +6,7 @@
>>  .SH NAME
>>  PR_SET_THP_DISABLE
>>  \-
>> -set the state of the "THP disable" flag for the calling thread
>> +set the state of the "THP disable" flags for the calling thread
>>  .SH LIBRARY
>>  Standard C library
>>  .RI ( libc ,\~ \-lc )
>> @@ -15,24 +15,62 @@ Standard C library
>>  .BR "#include <linux/prctl.h>" "  /* Definition of " PR_* " constants */"
>>  .B #include <sys/prctl.h>
>>  .P
>> -.BI "int prctl(PR_SET_THP_DISABLE, long " flag ", 0L, 0L, 0L);"
>> +.BI "int prctl(PR_SET_THP_DISABLE, long " thp_disable ", unsigned long " flags ", 0L, 0L);"
> 
> Hmmm, I'm reading this weirdly.
> 
> Old code doing prctl(PR_SET_THP_DIABLE, 1, 0L, 0L, 0L); would be
> transformed from setting the flag before, to now using 0L as flags?
> 
> Or how is backwards compatibility handled?
> 


Its still backwards compatible. The name of the arguments is changed, but the arg values have not.
Before you could do 2 things:

prctl(PR_SET_THP_DISABLE, 0, 0, 0, 0); // to reset THP setting.
prctl(PR_SET_THP_DISABLE, 1, 0, 0, 0); // to disable THPs completely.

Now in addition to the 2 calls above, you can do:
prctl(PR_SET_THP_DISABLE, 1, PR_THP_DISABLE_EXCEPT_ADVISED, 0, 0); // to disable THPs except madvise.


Before arg2 was called flags and arg3 was always 0.
Now arg2 is called thp_disable, and arg3 is called flags.


>>  .fi
>>  .SH DESCRIPTION
>> -Set the state of the "THP disable" flag for the calling thread.
>> +Set the state of the "THP disable" flags for the calling thread.
>>  If
>> -.I flag
>> -has a nonzero value, the flag is set, otherwise it is cleared.
>> +.I thp_disable
>> +has a nonzero value, the THP disable flag is set according to the value of
> 
> Please break the line after the comma.
> 

ack

>> +.I flags,
>> +otherwise it is cleared.
>>  .P
>> -Setting this flag provides a method
>> +This
>> +.BR prctl (2)
>> +provides a method
>>  for disabling transparent huge pages
>>  for jobs where the code cannot be modified,
>>  and using a malloc hook with
>>  .BR madvise (2)
>>  is not an option (i.e., statically allocated data).
>> -The setting of the "THP disable" flag is inherited by a child created via
>> +The setting of the "THP disable" flags is inherited by a child created via
>>  .BR fork (2)
>>  and is preserved across
>>  .BR execve (2).
>> +.P
>> +The behavior depends on the value of
>> +.IR flags:
>> +.TP
>> +.B 0
>> +The
>> +.BR prctl (2)
>> +call will disable THPs completely for the process,
>> +irrespective of global THP controls or
>> +.BR MADV_COLLAPSE .
>> +.TP
>> +.B PR_THP_DISABLE_EXCEPT_ADVISED
>> +The
>> +.BR prctl (2)
>> +call will disable THPs for the process except when the usage of THPs is
>> +advised.
> 
> Please break the line before 'except'.  See 'Use semantic newlines'
> in man-pages(7).

ack> 
>> +Consequently, THPs will only be used when:
>> +.RS
>> +.IP \[bu] 2
> 
> s/2/3/

ack

> 
> See man-pages(7) ("Lists"):
> 
>        There should always be exactly 2 spaces between the list  symbol
>        and  the  elements.   This doesn't apply to "tagged paragraphs",
>        which use the default indentation rules.
> 
> (If you grep(1) around, you'll see that number everywhere.)
> 
>> +Global THP controls are set to "always" or "madvise" and
>> +.BR madvise (...,
>> +.BR MADV_HUGEPAGE )
> 
> I'd say
> 
> 	.I madvise(..., MADV_HUGEPAGE)
> 
> as an inlined expression, which goes in full italics; that's simpler.

This results in the entire line being underlined, which is probably not what
not what we want?

> 
>> +or
>> +.BR madvise (...,
>> +.BR MADV_COLLAPSE )
>> +is used.
>> +.IP \[bu]
>> +Global THP controls are set to "never" and
>> +.BR madvise (...,
>> +.BR MADV_COLLAPSE )
>> +is used.
>> +This is the same behavior as if THPs would not be disabled on
>> +a process level.
> 
> Please break the line before "as if".

ack

> 
>> +.RE
>>  .SH RETURN VALUE
>>  On success,
>>  0 is returned.
> 
> Have a lovely day!
> Alex
> 


