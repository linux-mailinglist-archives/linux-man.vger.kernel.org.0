Return-Path: <linux-man+bounces-2879-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 08093AB14BD
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 15:20:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 117D37AAF47
	for <lists+linux-man@lfdr.de>; Fri,  9 May 2025 13:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D182293B4D;
	Fri,  9 May 2025 13:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cGHuwuIh"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90228293747
	for <linux-man@vger.kernel.org>; Fri,  9 May 2025 13:15:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746796503; cv=none; b=ZPnD+8GmkV5oXZc/ot1FQnZ3exC0qxBRtN1MWHCvW9RLZbmNK8hhW5tI7zNguefI+nvQ1ebdXeHAfuU6SS1huCwJne7HtI/vAIK4wy80Cdvrp4c/z+Nmh2Pjuo6F3cG07xm6RtOg8SOXkeCfX3ih252qgctusyYiZzk4OUVC48U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746796503; c=relaxed/simple;
	bh=+rMYZumtbmdhHmq18sU7Lcv0accsx5bpz/7gErOc0vo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dyeS7q6fihqPqMsEURJ1g7xrf89pwDvSaL59HKn9Z6sTtGkMbmnQXEMHny85bbjWywcroLarfBa5CZiSuNAFMVJ0RD5uvFnHK2w3Viw1jJX2zyXUprvkp+ccxhxTW6SjcUIi9fOnjX+wWiUFnhulLMOFxuHLw7IWX3JuN+Czdwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cGHuwuIh; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1746796500;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=g8u+omEiQKdgPkeMjVWA8QFrtxbG1YkTftQzgsQXFx8=;
	b=cGHuwuIhxCnlGEqlTBre4OiocGkh2EOafaaim+9CFuybEVb0IYt/L9e+lJNa/u1ehIi1/M
	DNqaj1JEryYa9fREMbro9bS0z26Wm+WrAs0DJzNTPWqLdLkFgSt/c19lwlnxPR6JC4ZCMr
	ou56RdoeLb1XgadbyLc46MMhrohVf4c=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-436-tNYUQhYyOPyr_gevy2lvoQ-1; Fri, 09 May 2025 09:14:59 -0400
X-MC-Unique: tNYUQhYyOPyr_gevy2lvoQ-1
X-Mimecast-MFC-AGG-ID: tNYUQhYyOPyr_gevy2lvoQ_1746796498
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7cd06c31ad6so33625085a.0
        for <linux-man@vger.kernel.org>; Fri, 09 May 2025 06:14:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746796498; x=1747401298;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g8u+omEiQKdgPkeMjVWA8QFrtxbG1YkTftQzgsQXFx8=;
        b=HxjHT0NFk6k6/S5FntCEfDq9+FTzOODa66urJ1py+HGYoNGXEBOotvDhD6NkNVzyfq
         yngqgkA018I5XWvk0eR+stzZZIPCnaLRQTrXfjk2hA+g4v7nih8bd18TL2yUnhabII8V
         50AcFbpMMtzBrTymArNLAwmGhcrntS0A9Rc8n90hjFvU7H193kCT17XP2x2NlcoLEogb
         5W2QnvpqSV8dndEs/XOAcwFnZH5CHSnnt48jhtHA5OldFGm6QsSxv5nvoOKFUoV6Dh/C
         8Z4lo2bv3FILoz25sUNusLt4bBc5/nH/rCvTHFyBr3oKOfvPXgRCn7wgQu/kPG5/dY4J
         Vdjg==
X-Forwarded-Encrypted: i=1; AJvYcCWY3U1VLxwuuKjvr3y7ABS+30fKfM2RLa0fEsQ7bYF9/aDKJhexVIJbXZoPr7kml2ruqrm1ozjwg9Y=@vger.kernel.org
X-Gm-Message-State: AOJu0YxJrEUyUsBz7s3oVJNDbAWehtXODP8VauMsTBL33q4ZxL3tWqWh
	ujKvqApY+w9nwuPbBie6C8v4Vv6qdyi8pRvUtoo3epzcaDL1+5xf9o3doRrD5Dw5gMyrkJo6Sl6
	yOkOX9OsNGPdrdHsh14y34tLLPO2pP93jXBUFyIPiaD6vuDTZg2fKeqaTWa0KLqUoAMpo
X-Gm-Gg: ASbGncsSM1BJfXwJlEWWmODIXx8BjPeI9oT+Knyf7pLbcgxyA1KDWvt4piv8kNZuT9E
	nDPtLy0zk+y68pRzJwrogBw3Be4whxA5eBSVsPsZZdFFjUFcrxSkXqzalSnrMp3JVqU86FMqT+c
	3F8ZTVum/7yirfXcpZrlX+bcyigUn4i9ZOTLhmFNsRj17SjX7pzAIUcyw2KKRbLCf9xV3CA+Xp5
	tY5AyGRRYqaljyX68hCyN8TCEX+UiOwPa3kgizgtUB0zzS0lc5Fh5I8KnMPvzjHCkFsZpIR5/nJ
	WGz0LbMDKd2Q
X-Received: by 2002:a05:620a:2588:b0:7cd:14c:ad00 with SMTP id af79cd13be357-7cd017875d8mr463248585a.14.1746796498269;
        Fri, 09 May 2025 06:14:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn1G+l09SFDBc2ntV7S43/cRAqaykiCa6fOFKeMuCdLQyx2a0Z9DyePHPt+OCTqaFLNJsErg==
X-Received: by 2002:a05:620a:2588:b0:7cd:14c:ad00 with SMTP id af79cd13be357-7cd017875d8mr463244685a.14.1746796497817;
        Fri, 09 May 2025 06:14:57 -0700 (PDT)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7cd00f63bf6sm136553385a.42.2025.05.09.06.14.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 May 2025 06:14:57 -0700 (PDT)
Message-ID: <d9b988f8-ebd9-4a0e-aa27-cab14f1f3a96@redhat.com>
Date: Fri, 9 May 2025 09:14:56 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Removing in-source contribution records contributer
To: Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Alejandro Colomar <alx@kernel.org>, linux-man@vger.kernel.org
Cc: "G. Branden Robinson" <g.branden.robinson@gmail.com>
References: <cover.1739389071.git.amitpinhass@gmail.com>
 <c45f3d934ec20ec5fc813400a4a56079c2241ed1.1739389071.git.amitpinhass@gmail.com>
 <wwjzzwjpbh2ayydhorwgs4jhycjgwhxfzlk5tfym7dxx4w7kll@yaspehl62eik>
 <20250212230210.3kkixsk7bi3cdc4d@illithid>
 <lvhwk4czikqmx4acydi5t5q3nshvgdipedz6xkt7auvz5mnmwp@auuzri4hvsrn>
 <gatqfsr5gvyy5iuq7gmlpibawerkcmbg4dl4ahzswbe5bgbec6@xyfht7yewjfv>
 <20250408124238.2gbis6jq5pdz7yoi@illithid>
 <7a09c8a5-6329-412e-be41-9950a758e55e@redhat.com>
 <nfwircxzu43boe5tme6loarzsq2rcecazpuox6eujeqjj6a7rv@nhzkijkx4lix>
 <2tmwbk6ennuamcvjdqnialvh4ez3zen666qatcklevasimlihu@n7o5hp6aejqp>
 <c684271a-9c1c-4c91-9ef8-db44cb924320@efficios.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <c684271a-9c1c-4c91-9ef8-db44cb924320@efficios.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 5/9/25 9:05 AM, Mathieu Desnoyers wrote:
> On 2025-05-09 08:54, Alejandro Colomar wrote:
>> Hi all,
>>
>> I've added to BCC everyone whose copyright notices have been removed
>> (those that noted an email).  The full thread for this discussion can be
>> found here:
>> <https://lore.kernel.org/linux-man/jpin2dbnp5vpitnh7l4qmvkamzq3h3xljzsznrudgioox3nn72@57uybxbe3h4p/T/#u>
>>
>> Please let me know if it's okay to you to transform your copyright
>> notices to make them uniform?  That is, do you approve
>> <https://git.kernel.org/pub/scm/docs/man-pages/man-pages.git/commit/?id=9f2986c34166085225bb5606ebfd4952054e1657>
>> in what affects you?
> 
> I was not sure if I should reply to all (including the mailing list).
> Please clarify for others.
> 
> This change is OK as far as I am concerned. I'm always happy to
> help lessen the maintenance burden. Eliminating redundant,
> copyright information appears to be a good way to it.
> 
> The git history holds detailed information about the
> line-by-line modifications to each file anyway.

100% agree with Mathieu here.

This is OK for me and something we already did in glibc to lessen the
maintenance burden.

-- 
Cheers,
Carlos.


