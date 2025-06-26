Return-Path: <linux-man+bounces-3214-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D6CAEAA27
	for <lists+linux-man@lfdr.de>; Fri, 27 Jun 2025 01:01:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F4F91C20216
	for <lists+linux-man@lfdr.de>; Thu, 26 Jun 2025 23:01:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0FD22424C;
	Thu, 26 Jun 2025 23:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="e94YzAJS"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F3618871F
	for <linux-man@vger.kernel.org>; Thu, 26 Jun 2025 23:01:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750978894; cv=none; b=j6Y2LOTfnaoDGdV9jV46mgUjnPXWtku3KXo2fNqPbKATdCkI6XiyZZjNB3jjFJ5RxfejPwybnDi4ambSepcNDj15acI4fAFD0fMubE07w4MRrhjfyEGXQOq5zhLVd+IarLullzr3pY95YZy0rKJ/MSwHxWLp46DmcpzCaruMQoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750978894; c=relaxed/simple;
	bh=Njtvv62TwFD2FO9ja1TttxQBspzkyAo9PMUt8l2UV+o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uiaBVGzrU83KpI6vyuosEcIIA5g4KdCe+HMx+UZUvpeY6WhP6/BkxKUXmKXN7gnvwSqAOmrGFkSk6nqkOJaRX2gVFWYLO/0Y7Yj/UnbDxykeu9i8UHxzD5an+M86fvi3OCM9C5ysaGSiE3qfvesPvbElJFhRo9bProR+puymo70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=e94YzAJS; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1750978890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=PW5ylyMhizoTAAErzVcgZ0ur8RtKhfjtmnfn782xCWw=;
	b=e94YzAJSPOFJGeLzKI8d45hH8g2euXqat5jhld2eZcrHmEFSP1ztnMRJu8Gtf7yQCCxOzk
	D7X8KGOPVRI0C1qPUDyVxZidnsoBchke3F28a1A7ivCI4z4aavKi2POxzvw/E5G6cNDY8g
	jstEN78vWsHpqMH8cGjTF2LlU2tqNsw=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-610-kXuX6uPGOt6A0Y5ZmgjL8w-1; Thu, 26 Jun 2025 19:01:28 -0400
X-MC-Unique: kXuX6uPGOt6A0Y5ZmgjL8w-1
X-Mimecast-MFC-AGG-ID: kXuX6uPGOt6A0Y5ZmgjL8w_1750978888
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d3901ff832so327547285a.3
        for <linux-man@vger.kernel.org>; Thu, 26 Jun 2025 16:01:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750978887; x=1751583687;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PW5ylyMhizoTAAErzVcgZ0ur8RtKhfjtmnfn782xCWw=;
        b=Od6QVQqWxUt+fK9JdyRjPIPzbH2vgLgdA2dIOV3K5TQeG+rWWcUSNhnbhXUIpJ5T8S
         gCoi4K4oxUdOmzAh7Ck7mXIiCdYO4wDVXiI+tMrzans9vO45CoE24kM/pETXpxla/Md/
         UEKNiKlYl5LA9QFwk5HMmP4abdXS29Yk96HzSx7jC4pEwkcXaGmNlaVQO9/q69137ppc
         8Gs38GAMp03kzJqY5q9git7/kOJ78VhWsWGTqJg7aE74DpeF8FTG6kI9ryrUx7Y8PVgv
         +VHXJ79AM2iRWQkNuvwpUxvR0r3T+DyWAFH5kNCEOqNFumZqvJMv916wTXMVVpDWMwaS
         ycHg==
X-Forwarded-Encrypted: i=1; AJvYcCXOiOJ70LHEfGOjAChGQzt0odCrP7v7sMZs7tAZe0i6pqNIXcgu/IPPkEOoWktESJxCAIlGY56ZMSU=@vger.kernel.org
X-Gm-Message-State: AOJu0Yzdxh35N09j+A1wVdgtQn+kAtF745Fvlfnh1LZrdNT4T9IeFxZC
	W9tHyEVBaRXT15twDH9Cnm/qyN0jvUIHcZ9qICLiF2zjgStAhen098RusHbpgduatWRL27aSM0D
	H+HcSpVIMTo2EE1HNpcifHf4eGvdD3gSa6A0hustzYv08ReRpBnEqIxPV3w3xY6xcT29IBw==
X-Gm-Gg: ASbGnctT0h9tgd7EXT2MAo2A+teUrC9dMX1tDr4ECCpi0b5QJBT7QLXR1piX+Kvp51A
	lSsCPYw0XNn4/Zov4dsE/tG97XgQQDIBjykYP4S6Hq+Y8wEmtP4dWtbo7Z8otSQoNO4NrALPfsP
	ec87YJEpr2EJoQxupt5YleT6tSX2FtSEQc1/3GMPeYO59BofxNc4jSP39o4q+rtaO2YbWq4SFoE
	TJ2FsizBoAdAXtjwmewUn3+LJlrEXRQV6Hjbe5JQhk0yb0eb5jHqwX3z84aFP3wfmfwvplCKh3g
	1YowvlHkWwShkpWRKN3qYhs=
X-Received: by 2002:a05:620a:6281:b0:7cd:ca60:7bdc with SMTP id af79cd13be357-7d44398f32cmr213734885a.48.1750978886604;
        Thu, 26 Jun 2025 16:01:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOibmE52XHUpjT6grdJtlIFuquz3A2Zc+qUcKxnr6mCl/cNP63g9Epzf3QztPPI1gDgOxwhg==
X-Received: by 2002:a05:620a:6281:b0:7cd:ca60:7bdc with SMTP id af79cd13be357-7d44398f32cmr213727985a.48.1750978885968;
        Thu, 26 Jun 2025 16:01:25 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d44324bda7sm52077685a.115.2025.06.26.16.01.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Jun 2025 16:01:25 -0700 (PDT)
Message-ID: <42dad79f-e0f2-4731-ac14-0189f5d278a0@redhat.com>
Date: Thu, 26 Jun 2025 19:01:24 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: man-pages-6.14 released
To: Alejandro Colomar <alx@kernel.org>
Cc: "Andries E. Brouwer" <aeb@cwi.nl>, linux-man@vger.kernel.org,
 linux-kernel@vger.kernel.org, libc-alpha@sourceware.org
References: <uidtufql6ftz72im7w6zggeihwhuwgnpxwb7j46fbp6ryvzv4i@cwyp6ewepeob>
 <20250509112627.GA924923@if>
 <bn2rs76dkhejmthy2wvul4ho26zzlwtkfg474ztiwggkxz7f3d@g25omktsd3ug>
 <20250509121454.GA952723@if>
 <3e82680d-149c-4a67-b838-bc73c0be3e4e@redhat.com>
 <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <e363mzanav4inu3wtk5pmyzfwlquxr5kwh7ytk5emtayizi7qi@dqxritlnl22g>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/26/25 5:04 PM, Alejandro Colomar wrote:
> Hi Carlos,
> 
> On Thu, Jun 26, 2025 at 04:41:16PM -0400, Carlos O'Donell wrote:
>> On 5/9/25 8:14 AM, Andries E. Brouwer wrote:
>>> Hi Alejandro,
>>>
>>>>> I wonder about the legal status of such a change.
>>>>> There is ownership of the pages, and a license that allows
>>>>> others to do certain things.
>>>>
>>>> I also wonder about it.  We discussed it for several (~3) months, and I
>>>> documented links to the discussion in the commit message:
>>>>
>>>> commit 9f2986c34166085225bb5606ebfd4952054e1657
>>>> Author: Alejandro Colomar <alx@kernel.org>
>>>> Date:   Fri Apr 11 02:19:48 2025 +0200
>>>>
>>>>       *, CREDITS: Unify copyright notices
>>>>       Link: <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
>>>>       Link: <https://www.linuxfoundation.org/blog/blog/copyright-notices-in-open-source-software-projects>
>>>
>>> So I read this last link, and see
>>>
>>> "Don’t change someone else’s copyright notice without their permission
>>> You should not change or remove someone else’s copyright notice unless
>>> they have expressly (in writing) permitted you to do so. This includes
>>> third parties’ notices in pre-existing code."
>>>
>>> The main topic of that link is how one should document new contributions,
>>> and writing "by the contributors of the foo project" is OK for new stuff,
>>> of course provided the new contributor agrees.
>>> In my opinion it is illegal to change existing copyright notices,
>>> unless you get permission from all people involved, which seems unlikely.
>>
>> I agree with Andries.
>>
>> This is also my interpretation, you cannot remove these entries without
>> express permission from the copyright holder.
> 
> Well, we got express permission for a third of the copyright holders in
> the last few months.  Also, we got no express notices in the contrary,
> so around two thirds have remained silent.

You should track down the copyright holders and get written approval,
or restore the copyright notices.

This is exactly the difficulty in maintaining such written notices.

And why they are no longer recommended.

> We could restore those that haven't expressely granted permission...

Yes please.

May I suggest doing a new release with the copyrights restored?

> The thing is, as someone else mentioned, removals happen also implicitly
> by moving text from one page to another and not copying copyright
> notices, so how much does it matter an intentional rewrite of the
> copyright notices into a different form (but which keeps their
> copyright, as part of the AUTHORS file), compared to an unintentional
> removal of copyright by moving the text (these do actually remove
> copyright, so these are the problematic ones).

Both are legally mistakes.

The common utterance is "As compliance approaches 100% cost approaches
infinity" :-)

However, you should not deny anyone the right to have their copyright
directly noted in the file, but you can encourage the generic use of
"Copyright the Foo Authors." You can deny the contribution entirely if
you wish on grounds that maintaining copyright statements is too much
work.

> By rewriting the copyright notices, we'd actually be honoring the
> copyright, even when text is moved from page to page.  I think that is
> more important.  And since all explicit notices have granted us
> permission, even if some have remained silent (in some cases, their
> email probably isn't monitored anymore), I think we should go forward.

I agree, but you need permission from the authors.

I disagree that man-pages should go forward with the current changes.

May you please restore the copyright notices and cut a new release?

-- 
Cheers,
Carlos.


