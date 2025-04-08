Return-Path: <linux-man+bounces-2755-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 37436A816B7
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 22:18:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 109AD19E1029
	for <lists+linux-man@lfdr.de>; Tue,  8 Apr 2025 20:18:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815791CEADB;
	Tue,  8 Apr 2025 20:18:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="dkcrTex1"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F59F23BD1C
	for <linux-man@vger.kernel.org>; Tue,  8 Apr 2025 20:18:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744143523; cv=none; b=LtFl3rrn7YreLiWmRFgI9yoDC6SRZMo0jUqliBdrdzQBPbximlWSy9f+Vrc2UXC7L85aBuMIVL9ENDMqrRMVM0lkFrwQSRUShH+6pgvTwqEyToet5SWMgPL80fJXNFWdqtBqIOx7a5ERCjT/HLugmJaQ+ac+mMf85TCA3gjJ0N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744143523; c=relaxed/simple;
	bh=ydymimecpS6QZ4tWX7mgxp5Gd2wjY2t5Twbr9pUkaSk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=d3qrKIjvTpUTEBj8jxZ/283WeHoJ8rw9Gp0jH9vEfM7KgMrFkByyHBFBQ2Ef8tvmuyERwef89va6oJJU4JLI41/3FW7jCLUx6xmO122FvbzyQ1vOhFhhmkDeRQvqBhTonJLDYQiGplqVJ1iC+OQRhfT44Bl26waZ1QERsfnAwZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=dkcrTex1; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744143519;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=8BcI+qRuQZClZ95EuYn5C/Qbd/y/jS5gOwoeHb36Mi4=;
	b=dkcrTex1r8v201IeBvNjEFmGuNX409L+R52HnxdX6OUAK9EodcV6wrqihI0cUnk0CZN/M7
	xLm87kLvtEGb7gGc7BSvrgpKNPM87nDWCHBjWcA0YEt4YW0ZpLxnBUjnRwWwxkdcunhmFr
	gYV4e2eLR2pdGwTW1WbKjaI2INnKF3k=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-370-rQmNysvyPLmB_XKZY2grWg-1; Tue, 08 Apr 2025 16:18:37 -0400
X-MC-Unique: rQmNysvyPLmB_XKZY2grWg-1
X-Mimecast-MFC-AGG-ID: rQmNysvyPLmB_XKZY2grWg_1744143517
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5b9333642so643984185a.3
        for <linux-man@vger.kernel.org>; Tue, 08 Apr 2025 13:18:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744143517; x=1744748317;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8BcI+qRuQZClZ95EuYn5C/Qbd/y/jS5gOwoeHb36Mi4=;
        b=iiiGzKR8VYRqV8ajjtc8spq7o14ku2zj47ouYBdvxuaH5GadXYE6AFNCzygl/MeFyd
         ihbQdkNvh2Ze801lkb1jUzAvFr/VL3rVe9V68g30j4Qp1hZylZ88XT0MwH7ckQUQOH50
         LHATIi68saTdwL+u98HPRo5z4HtMvwDlDeHdWs0SplSLsQP69WrjBmw1Z6z0ZHMqDFLA
         5DBQt4hmikGb3Oj4qqpAZGF5Cgxo2ooIrEDIrWyqNH6BCIZeYaeN5JUgay8Czh09xkQ+
         rcZqCVTA1YiT4Cr0o7NdFrjCq2Ix2O25OMMCaSjSQ3ZoyomTV3Kra/2GdPkAmYSKR3Vj
         ESPg==
X-Gm-Message-State: AOJu0Yzh1zmwoTowDyXgWjWYtZJJX/5Mj6g4PfHtGQRHqJt09ZU+5S4C
	D+eum/iGvXsA0nIVzKUsou/sURJiTJ7uC7ioxsrfUAu/EFEP4j9KWzquhQdceDf4u+PFhw45+D6
	t1ZowBpby/wkkzPmGr3NCBEWF5JIdi6FPbn5hk577PR4g4HZR4J1JbFxvUg==
X-Gm-Gg: ASbGncuBQXnYC+XMG4EPaT/vOTE2Vhx9ql95TDtmZmWXzCRoAIzqKC52m+ckTjjQcsT
	plkSFfpQ5sLGtHilczcFwwFJ/JUJY8qB9x+o4yynbIRAGS4Py8o3N3keMeE6Uesoa0h81LUx1Ew
	mwDrIcnwT2eJcAeFxJt2VQbB22eoesa54HHt5AbRkOj8jL+WYJkMkag+HmFI1KZXcxOGZU14YvU
	CF/lDefGXU0adGsI/ucP5nxg5k6uMIehR++9lOMZMaaGjTB0+yWfkEFVRGXt+f41Ha6HtfR2tFy
	fWnA5gavPLqMic1/
X-Received: by 2002:a05:620a:25c8:b0:7c5:4e7e:189d with SMTP id af79cd13be357-7c79cc4b8c8mr96668585a.50.1744143517258;
        Tue, 08 Apr 2025 13:18:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHO3aQNm/qcaKnLEc9LU1KhYqp8zQIWClhbLYL5LSN2ZZgw/LZ6DNUhW0HM2mObX1Lt6HzgMw==
X-Received: by 2002:a05:620a:25c8:b0:7c5:4e7e:189d with SMTP id af79cd13be357-7c79cc4b8c8mr96664485a.50.1744143516898;
        Tue, 08 Apr 2025 13:18:36 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c76ea58d63sm805509985a.87.2025.04.08.13.18.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 13:18:36 -0700 (PDT)
Message-ID: <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
Date: Tue, 8 Apr 2025 16:18:35 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Removing in-source contribution records contributer
To: "G. Branden Robinson" <g.branden.robinson@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <20250408124238.2gbis6jq5pdz7yoi@illithid>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/8/25 8:42 AM, G. Branden Robinson wrote:
> Hi Alex,
> 
> At 2025-04-08T01:05:02+0200, Alejandro Colomar wrote:
>> On Thu, Feb 13, 2025 at 12:20:58AM +0100, Alejandro Colomar wrote:
>>> On Wed, Feb 12, 2025 at 05:02:10PM -0600, G. Branden Robinson wrote:
>>>> If you do this, I suggest you replace these lines with something
>>>> like:
>>>>
>>>> .\" See the Git revision history at
>>>> .\"   $URL
>>>> .\" for records of changes and contributors to this file.
>>>
>>> Good idea.
>>
>> I'm thinking I won't do that.  I don't want to add that overhead to
>> each page.  People interested in the history of a page will already
>> have a look at the git history, and there they'll find the old states
>> of a page, in which they'll find this information.
>>
>> And it would require some non-trivial work to add this note
>> consistently.  I'll go with a removal without replacement, I think.
> 
> Acknowledged.  It's been a whole 7 weeks for so, so I don't clearly
> remember my reasoning from February, but my suggestion may have been at
> attempt to find a "conservative" alteration to file content or the
> expressed meaning of the comments.
> 
> But, what's conservative in one dimension often is not in another, such
> as "labor required".
> 
> I also agree that while Git is a complex suite of tools, "git log" is
> not among its deeper magicks.  At least not when run without arguments.

We did something similar in glibc and created a CONTRIBUTED-BY file at the
top-level and moved all contribution lines out of the respective
files into the top-level file.

e.g.
~~~
The glibc project stopped adding "Contributed by" lines to source files in 2012
in favour of acknowledging contributors in the glibc manual and through the git
log.  The record of existing "Contributed by" lines have now been moved to this
file to acknowledge contributions by these developers to glibc.

argp/argp-test.c:
     Written by Miles Bader <miles@gnu.ai.mit.edu>.

argp/tst-argp1.c:
     Contributed by Ulrich Drepper <drepper@redhat.com>, 2002.
...
~~~
The top-level CONTRIBUTED-BY has ~3,000 Contributed/Written by lines.

Sme of the authors predated the use of git and so it was simpler to keep the
lines somewhere as part of the transition away from "Contributed by"-style
lines.

-- 
Cheers,
Carlos.


