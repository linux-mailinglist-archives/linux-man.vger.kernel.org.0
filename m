Return-Path: <linux-man+bounces-2441-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 17D28A35F54
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 14:37:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D72BD1887D9C
	for <lists+linux-man@lfdr.de>; Fri, 14 Feb 2025 13:37:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1756C264FB9;
	Fri, 14 Feb 2025 13:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="a/q62j4q"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C186264A82
	for <linux-man@vger.kernel.org>; Fri, 14 Feb 2025 13:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739540256; cv=none; b=TqN7oYIhx+AWBP6HPl2GsPFRJy4PG339ltV0hUJ3/q0XKRypAOAt8Kng6qt0vJR0jZ5WX+iEYrP9bzdRZQJkBN1N4j2KZy9GMXyex/7ZSpKXxe7e/AOOzfJyzigdUfJtHqu4MmjIW1Uhw1cx+8KP/mxnY1ZECZG1zNWeJaA+B+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739540256; c=relaxed/simple;
	bh=7lxLfiiuTd6FTYEew2qFcZddfGmXMkBzYa30Ads9Wpc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lvcCM33hNBLfrN0ZXi/YAHYUH/tORHWXwgOj/9geIrRjwvoL2tjXHObRDsWYpCNf4b2F9ThzpG6DPnWTCQKUKajII6j6iBgZQc17v/pJ0VpaLYNLg+6lZ4hXU2japA1uJeMQoKiT6PjJSid2eHRAZe+JH+pJI6Scg9vb1Ob5kOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=a/q62j4q; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1739540254;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=JSr6gic9/YvFwXqwvQnyheeTPe3+6GiB4vKNEE91zCk=;
	b=a/q62j4qVo/kUOuPw64KZxF/iVJMnThjbOSNA8Pv45RPwt9EajX9mHVgl0Jdf/qKIhF7QI
	gYjR/fCNVAe69ZsBM+35RcYJ3XwEn4amaeic9jgZWXPPqT7Vgp+asL8cVDR5Nt0VNiBVg5
	wsEG0PbdfVzRgvQsJ0xzEPFAVD7YYEM=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-683-9-hG4rrpOfeUAS1RrHABqg-1; Fri, 14 Feb 2025 08:37:33 -0500
X-MC-Unique: 9-hG4rrpOfeUAS1RrHABqg-1
X-Mimecast-MFC-AGG-ID: 9-hG4rrpOfeUAS1RrHABqg_1739540252
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7bb849aa5fbso429840785a.0
        for <linux-man@vger.kernel.org>; Fri, 14 Feb 2025 05:37:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739540252; x=1740145052;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JSr6gic9/YvFwXqwvQnyheeTPe3+6GiB4vKNEE91zCk=;
        b=MDI3OUOBZ4g9GJroGXvTxAW8qbHXCUu6DFTadEtSiF9kJqxeakqxPAsaMVkUE+pcFh
         1JYjS8F5npujkuxSSj+q1lM7kiMZHxN2LIt5p+d88YxkxfPF589QLytzJA3g0PrRTZID
         cIk42s/ya2gA3sawG7DC1qlwqkgKjqXMRYm/k0Lm06RbY9wyl3KlLHKnIC17ebpg138b
         oFnkAHdqNd+x3yeOHqaP/zvtqRAxeI55Q8blVN3yXYRuMBbx0QBwxCRBjft0mpZ7gxWx
         T7dPB/939q7HXabu9e2UwoahCmhyCHXFRZbmkiKICJwZuxC/yatxQZT5FcmaWKp5460P
         Obnw==
X-Gm-Message-State: AOJu0Yze6hqg3EllnNrl4G9FWMWIop5F/K9yTwT8eRSQ/D4PLfNIqBS8
	0LyPhh9UL40ElhUfbG9ec34LnZwS0rcCjgMaR7cEnZEmSCGHoRTNMymQdMVqNoYTlC0auGQTVu+
	i8ZtrAM7S17tOLny0iuXnvu2wTobgKSLTh1I4a71VwI2zk/pbAeq/YneJf7BVoCPhDQ==
X-Gm-Gg: ASbGncv6KTa24sarCegJgrUMIxxvqoz8/aNZrTGLbCIfKgPgYXB2+loDR7skV/g5T7y
	7FFtKCTXiqpXkNxBZlWoPeEx4ustEmIwKzE1QqCTybuIEfb+5tI67M837zBfEfx6qwRLDYok1+e
	aOOr6iR6mVXo+QnBKn+8tKPDtUakcIoz4DlY3WQ7OOjrI86gBZTxWgMi4v6/P6IF6QHZjDAwMf5
	Pgfg6qnxhXJt49wCXcEwJz1U0Hapd9/YJOHCvcE8N9ZQeOCEdf2eDl4qRN+FqkMz2tOi7VOwaR6
	gTQnwA==
X-Received: by 2002:a05:620a:2802:b0:7c0:7a1b:894e with SMTP id af79cd13be357-7c07a1b8b2bmr1057595085a.23.1739540251896;
        Fri, 14 Feb 2025 05:37:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGg1unAeHh505bQ5qorg0ADl/v8S1SCHRVgmSRZiesReLfDOL9V9Ep7RGUD9Tc/W2JcyUf/VA==
X-Received: by 2002:a05:620a:2802:b0:7c0:7a1b:894e with SMTP id af79cd13be357-7c07a1b8b2bmr1057592885a.23.1739540251564;
        Fri, 14 Feb 2025 05:37:31 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6e65d7793c3sm21151836d6.17.2025.02.14.05.37.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2025 05:37:31 -0800 (PST)
Message-ID: <1a5e0d5b-9273-48db-94ec-d2cb408f0f73@redhat.com>
Date: Fri, 14 Feb 2025 08:37:29 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man3/getcwd.3: say more clear that syscall can return
 "(unreachable)", but glibc wrapper cannot
To: Askar Safin <safinaskar@zohomail.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20250214125023.2798287-1-safinaskar@zohomail.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <20250214125023.2798287-1-safinaskar@zohomail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2/14/25 7:50 AM, Askar Safin wrote:
> I verified using expirement that glibc wrapper getcwd actually never returns "(unreachable)".
> Also I have read glibc sources for all 3 functions documented here.
> All they don't return "(unreachable)".

Prior to fixing glibc bug 18203 [1][2] this is not true, and documented in the
BUGS section of the man page.

The original text in VERSIONS is more correct because it is advice to developers,
possibly using multiple versions of glibc, some of which did return
"(unreachable)" as noted in BUGS.

Alternatively you could write:

+When dealing with pathnames from untrusted sources, callers of the
+functions described in the page, including the raw
+.BR getcwd ()
+system call, ...

Note: "raw.*system call" has only ~15 uses, but seems appropriate here as we
are contrasting against the userspace wrappers that provide conformance to
a particular standard.

> Also I changed "pathname" to "pathnames".

This is correct and could be split out.

> Signed-off-by: Askar Safin <safinaskar@zohomail.com>
> ---
>  man/man3/getcwd.3 | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/man/man3/getcwd.3 b/man/man3/getcwd.3
> index 685585a60..685a280a1 100644
> --- a/man/man3/getcwd.3
> +++ b/man/man3/getcwd.3
> @@ -245,8 +245,10 @@ process (e.g., because the process set a new filesystem root using
>  without changing its current directory into the new root).
>  Such behavior can also be caused by an unprivileged user by changing
>  the current directory into another mount namespace.
> -When dealing with pathname from untrusted sources, callers of the
> -functions described in this page
> +When dealing with pathnames from untrusted sources, callers of the
> +raw
> +.BR getcwd ()
> +system call
>  should consider checking whether the returned pathname starts
>  with '/' or '(' to avoid misinterpreting an unreachable path
>  as a relative pathname.

-- 
Cheers,
Carlos.

[1] https://sourceware.org/bugzilla/show_bug.cgi?id=18203
[2] https://sourceware.org/git/gitweb.cgi?p=glibc.git;h=52a713fdd0a30e1bd79818e2e3c4ab44ddca1a94


