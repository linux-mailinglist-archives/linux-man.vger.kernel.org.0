Return-Path: <linux-man+bounces-4348-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB821C979DE
	for <lists+linux-man@lfdr.de>; Mon, 01 Dec 2025 14:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DB9A3A2011
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 13:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 258A144C63;
	Mon,  1 Dec 2025 13:32:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TbGJtFbf";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="OA8xtpKL"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443811B87C9
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 13:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764595945; cv=none; b=A4JoKMVFnOXTLXTPZrrKpZxdoMwe3NCYdk7VRtl13DXlJdgE372P3IxIWpNYntbFQO7nYsaXXfbDdFcJ7wwZPmqh0xS795ir0yCrnJ5v/ryhaRBVaD6YSE0S8gvqe/67KfCjqWwXt+Hsr91N2lDVzPYZ5XsG/K5NDlXPTYVHSg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764595945; c=relaxed/simple;
	bh=uMxRIZWYuqKK7SLfyRDXmqBSKM6PVNnFvLm7Kv4g1wg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jwWTX6H6VejbC/Biz3ykOVRzyEY2wv2NaHDCpBzbUk2U1Pz96sOF0o5P3J41SU+k2rwUi+YOHgW3hfvu+k+224uRn7Drr3tbdqGxM3TVbFQj30FRMHsFcAsOqM/G8318UDYhHFWqoBxsKEkTe8UCkaH2ty2+s9BzOMA5lNc2nsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=TbGJtFbf; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=OA8xtpKL; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764595943;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=7e73EkdRRlv7c6qXh4deLJxPgoR84khob59CpcPqDCM=;
	b=TbGJtFbfcAVYhFVDT8mylvccfUGA9y3dTy3rSejhfMJxfgEAblh/000SAOgRbC2wogKe4L
	M6+ULfQk2Y4Exgxv56SfBny4JWDRwiaSjVM6/Z7RDILiD7rg94BkMIaZN3TWN6a4XuaJoh
	TGJt6mmIMMYeXMVx60LcAEUNjw4+9k0=
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com
 [209.85.128.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-526-f1gpV_2_NX6k80azMLzhFA-1; Mon, 01 Dec 2025 08:32:22 -0500
X-MC-Unique: f1gpV_2_NX6k80azMLzhFA-1
X-Mimecast-MFC-AGG-ID: f1gpV_2_NX6k80azMLzhFA_1764595940
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-787e84cec10so51290107b3.3
        for <linux-man@vger.kernel.org>; Mon, 01 Dec 2025 05:32:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764595940; x=1765200740; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7e73EkdRRlv7c6qXh4deLJxPgoR84khob59CpcPqDCM=;
        b=OA8xtpKLsrGYC3wHa8OkmUzkJXufRw/bqDkarVmiRTJQzu79iCWIOrHjrds3vuAejI
         UG1Ck6K8DysZAM/PbJdb9N6mXrvKQ6yYgg8lnAPfNhjIEa4p3EHSadUQtA7eQwaRlu0d
         jDgQwUchfLsgc8T3hVSI4YHw0Tt5W1JPG/irdEX59egEZtTeczag7T6LubhabQkBpSpg
         NVun05qcAWX4h3z8s6R4lFoboyA6C+OZ3yBfazGVD5wcAar5o8Bb74iuhypskchQ5OYp
         3TgS2ZJOx/4+m71qENHNcH5hu5LTyNagRMC5LLPPXjApWZpUBGmUNmgsS4Ts+CQoddaq
         sk8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764595940; x=1765200740;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7e73EkdRRlv7c6qXh4deLJxPgoR84khob59CpcPqDCM=;
        b=WOaQODgW2ECu/3GtJ8Ej9tnV8MmSym/33W5U+KWTQXYLmCFrWoV1tjYwAc1ko2M0Tb
         1nPq3SEERSIXMkUcOqSE3ZAJg+ab6ZKC3/aSOhQruZo8OXv57+pJS2qO/BP6KZkfp4fA
         wPNCNb2gERrHVubeX2R5prob6KvJ85wIlVTesZ4/6fROyTwwNxl1VqpNSJO8TWl31xav
         eo5bw1nRB/UGpLpW9RdGqdAYDy5qJvF/Cqvt+Rs9IB/LAVhkB5V8zPT9bWOBiGX4Ofyt
         mJhB5Edv6VtVnveIHwk2q1HN+gJJDhCUXKEvF1CEUmnjIFRNvfuJis1m5zpsT4zupPCm
         1Nfw==
X-Gm-Message-State: AOJu0YyliipDx8P0i5K5FXBAK7JupP+geKs2fBEkAo0fmBjkNFuK+E0K
	276KnGG16b3oP4lLnbfHTu3tXMVHTSQLLfQ2gHv9KM/p7ONdbGk/rbJJGvJHP1IfQ/i/Qam5BXB
	NehBVrmQvV2PPhovbzW1iUL6bt+hCR62B8qSKx493J+wweOj7GxjYT5tR8nQiow==
X-Gm-Gg: ASbGnctCqZkQxeEJ3FdErdWC8inD5JaEOvjbA2LsZ94zpe3tKIoy/foRXlI244joxyF
	oTWcDs6VPRwXm1eEbngoOFowzxKC0Uc5xIyZDB+7tO/Nai1R9XPagoZEOpiKKafZpVnn2ule0Sh
	gnkQBCcNCuJdM0rsiP/qUYnTzH0ADKWx8RuFrpJJrUt3PYrjtG3+ckNvsMdDAr7LVZMVaK7qhNB
	r+6jW1AMNcxyEcj4AdF4LjZAvNz0yaAA/dwnr/BuRoeptm9Bp65PiIfDvwazMxKbjT5S4aX0Sf8
	2dgvMfiHDN3OSgsjeC8yXnZmtvfQHrp7/XBmGTHmRBMbsi7OSuTSwt5NZsWUr1ZHh2WpZ1JfgpH
	SAa5m2w10ve0=
X-Received: by 2002:a05:690c:7488:b0:786:5379:afa4 with SMTP id 00721157ae682-78ab6f1a2ffmr203237817b3.41.1764595940389;
        Mon, 01 Dec 2025 05:32:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFDUzgWMk5iTIMuiIJdOkw94OX8q7RfHkpSQzymDn3H0CC26AWsReLLrHHzVWU5NNSympKC/w==
X-Received: by 2002:a05:690c:7488:b0:786:5379:afa4 with SMTP id 00721157ae682-78ab6f1a2ffmr203237377b3.41.1764595939901;
        Mon, 01 Dec 2025 05:32:19 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b5299a534asm845503485a.15.2025.12.01.05.32.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 05:32:19 -0800 (PST)
Message-ID: <1189e99e-897c-4245-9ece-f9f6ec4360b4@redhat.com>
Date: Mon, 1 Dec 2025 08:32:18 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] sscanf.3: Document exact matching for %c
To: Florian Weimer <fweimer@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <lhu1pli6tsj.fsf@oldenburg.str.redhat.com>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <lhu1pli6tsj.fsf@oldenburg.str.redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 11/28/25 10:50 AM, Florian Weimer wrote:
> The glibc manual has always documented this behavior, but the
> implementation differed, treating the field width as an upper limit.
> 
> Signed-off-by: Florian Weimer <fweimer@redhat.com>

LGTM and is better than before.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

> ---
>   man/man3/sscanf.3 | 7 +++++++
>   1 file changed, 7 insertions(+)
> 
> diff --git a/man/man3/sscanf.3 b/man/man3/sscanf.3
> index f0b248518..fa4cd0db7 100644
> --- a/man/man3/sscanf.3
> +++ b/man/man3/sscanf.3
> @@ -172,6 +172,9 @@ and these discarded characters don't count toward the maximum field width.
>   String input conversions store a terminating null byte (\[aq]\[rs]0\[aq])
>   to mark the end of the input;
>   the maximum field width does not include this terminator.
> +Some conversions require exactly
> +the number of characters specified in the maximum field width,
> +or they fail.

OK. Correct, in particular "%c" operates this way.

>   .TP
>   \[bu]
>   An optional
> @@ -480,6 +483,10 @@ and there must be enough room for all the characters
>   (no terminating null byte is added).
>   The usual skip of leading white space is suppressed.
>   To skip white space first, use an explicit space in the format.
> +.\" glibc commit 2b16c76609350ec887d49afd4447743da38f7fab
> +This conversion only succeeds
> +if the number of characters specified by the maximum field
> +can be matched.

OK. Adds clarifying text to the "c" specificer text later in the page.

>   .TP
>   .B \&[
>   Matches a nonempty sequence of characters from the specified set of
> 
> base-commit: 081d4f6779ac39da0265cac6e67d1c9a281e6990
> 
> 


-- 
Cheers,
Carlos.


