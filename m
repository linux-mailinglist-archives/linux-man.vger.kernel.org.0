Return-Path: <linux-man+bounces-4355-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B1C5C999BA
	for <lists+linux-man@lfdr.de>; Tue, 02 Dec 2025 00:41:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id D38584E10DB
	for <lists+linux-man@lfdr.de>; Mon,  1 Dec 2025 23:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E9212877E8;
	Mon,  1 Dec 2025 23:41:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="WLuaBXEN";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="ocIF3PdS"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2A69192B75
	for <linux-man@vger.kernel.org>; Mon,  1 Dec 2025 23:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764632469; cv=none; b=Hr9BBlAJ8irmSHzfGPT3VoweVpE4IEtETiK4UbVBtmQWNlks7sz+5L91qXnsSDpJ+hT6e/hFH7ilBNoQC54VMK+q0XOsT7h68Jr3c5mJA7115wtNTmTUqwmcPEOuUMM/HLkmaZSOTno2+zogVuysJw8G8JulXqDDoFH8LZIuVIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764632469; c=relaxed/simple;
	bh=csGZSp7h4xOSBiuTK/IyKzY4ps2XB3yaoslB/16XKtk=;
	h=Message-ID:Date:MIME-Version:From:To:Subject:Content-Type; b=HH8uL4VWM7ahBQu+COnUSjxVA415wY3h0AOQGekzchONdOKxPr+YYVxx3/dUnPimAGw/DWJwvqqYEGsUMN72xKJ4JFzomBUa+pjZX51adY7MBqqwUKqCAmViddMa0TfVXr5o997/Hlh6Na18nIu/zk673eh/FbXmU8K1OI87P6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=WLuaBXEN; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=ocIF3PdS; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764632462;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:autocrypt:autocrypt;
	bh=/HQV/TX5pndgsR1eSAoYa3UUoWB1fizbnoDJJft3/Uw=;
	b=WLuaBXENrWIFDs1AEVJ1IJzKVaSpM226p3kyjyC6d+QHaV/b/lQwK9aU/gCJV9JPTIErWH
	EkrQhkJj8wt/x8Hb4n5j/pOGD3EhoQzOyvsQYwNKVb9p20FLQlOkzXyajYxHjKXSHBZ3vm
	SShux2aSDG/molY1UtFH0pxZ7wGVlzs=
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com
 [209.85.160.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-677-DyW_J8rcNOiuI8ZjyXuDGA-1; Mon, 01 Dec 2025 18:41:00 -0500
X-MC-Unique: DyW_J8rcNOiuI8ZjyXuDGA-1
X-Mimecast-MFC-AGG-ID: DyW_J8rcNOiuI8ZjyXuDGA_1764632460
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4edad69b4e8so73757531cf.1
        for <linux-man@vger.kernel.org>; Mon, 01 Dec 2025 15:41:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764632459; x=1765237259; darn=vger.kernel.org;
        h=content-transfer-encoding:organization:autocrypt:subject:to
         :content-language:from:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=/HQV/TX5pndgsR1eSAoYa3UUoWB1fizbnoDJJft3/Uw=;
        b=ocIF3PdSxui+ZBFOIsfWLM8QRC8D+BBnz2gyzvnxqSFDctPHe2+7UW0SZntId4prqC
         OnnfGUKfkLRdy3bc0BSK0nWOCSQnXCyF0hCg8HSJodc8p68tU2f5f5tx6wU3fdPEMGb1
         GXxgmrsPM8qw72jxswg2orbtaFIWliWclpOZcCTQWfi9VvosK1nKumTR+ZKX3ItyzY8A
         puknUMY7xTazMC7Ylv6gEbouLJbshjMUAv+1CxDZ1yO4RmDbITmlaznMAx6npYbzyAUY
         C5JTk4ZsfKIuTTpttMjZWFLS2JUWTJaEi5fVzQb8qBui6oGlkmKXGia1jM/ouw5ElxcZ
         fxxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764632459; x=1765237259;
        h=content-transfer-encoding:organization:autocrypt:subject:to
         :content-language:from:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/HQV/TX5pndgsR1eSAoYa3UUoWB1fizbnoDJJft3/Uw=;
        b=TWgverrZGnCWAD7QKh69D4ws/IRA9HhmERyad4xwMCZLijf7xBK9qHw6lGZKnZDNan
         Kz8GvTlTz3G/ANWAUc/DR9KQW6NlzD/CB8NTdj39RF3GR7Er5+/ELAYRVpWuGWHcC+c7
         8Je6G/0Jt1rnxmk2U9xi4Hm74xufWgHEDjSzIcKFUNlf1m3d1x17lnzT+OJZS+Q1Smsv
         zpT3hMXNEzk6XnhtxVGfg9OieQpo5cqUfAQYtJaZi4grz+Axf5es9pZTXjTCdNh4nHOF
         IymXe4FwVgxXm1tBm6bl2pZF2Rrt+7NEsZBoHFJ9rc22cAYYBnxV/CSBanU45lRjmQ4V
         FTUA==
X-Gm-Message-State: AOJu0YxCfwf+8PGaAEAyyYLDbmV9oxdli2WGZb32Gji0qwkXkR8fp3l+
	SdGo4Vn7LuTkqmFKYnuUh46w9G8gORHyFh/Ta9QPArswAW+fEugjWo/3iuQSDw9Iz6zY0U+ImqU
	6UIy/iTXjY/HwBXk5FOYe+w8mnjr/Zxq6ULGfhYpsYng56UKzfvc0b4mfvjylI7H9skkuM+7oX3
	XTgvWS8FONhKUMj98tzc2qGhzWeSTpgZsU1egJnzULw7M=
X-Gm-Gg: ASbGncsbAsk7/1TmjPLLarkA2H2NAw6SHjzkLD28BD9KCN070CQLgDcxOg+QOVzXtDJ
	x8FC2l5xHXneDayw2nm4XVzs93yKGtC9XDtetwSle6K0olBeD4WS62vGGetvzhz3iDVxLtfkVH0
	JxQJq80LJ+IXAfjDn7LPuDd1IC+PtEiVQbo/YCmC8TYsv/Q0lWAFAmuGIaXqhUdvH1YSbnv605F
	T3tdvS2Kcd1AEBCQS2ylsgbMZd6dmwIN3Ix0wJ6lYUjuLSCyA98DGUKt5XVd6fnRmEOp+vzCwq0
	i2dgU3cf2GFlhU9kt6b1Au46z3ZgS5YRyYI6amD68/N/odsmNmIjikTMvvyO+3hmCzyVQrdxeiw
	/fySeA8EF16g=
X-Received: by 2002:a05:622a:1454:b0:4ee:24ae:a84 with SMTP id d75a77b69052e-4f00894e978mr7564151cf.21.1764632459471;
        Mon, 01 Dec 2025 15:40:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF4zEQ5CKHOLk1VwDAMqTQHZ1DJ6/IO6XT7c2LE7QxoPnT/3yb640NjkWylb0cVTvyaa6z6Qg==
X-Received: by 2002:a05:622a:1454:b0:4ee:24ae:a84 with SMTP id d75a77b69052e-4f00894e978mr7563791cf.21.1764632459040;
        Mon, 01 Dec 2025 15:40:59 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4efd2f9a3b5sm84409471cf.1.2025.12.01.15.40.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 15:40:58 -0800 (PST)
Message-ID: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>
Date: Mon, 1 Dec 2025 18:40:57 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
To: linux-man <linux-man@vger.kernel.org>, Alejandro Colomar <alx@kernel.org>
Subject: Downstream Fedora user request for additional see-also in "man 5
 proc"
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Alejandro,

Forwarding here for discussion.

After the split-up of the proc information into various pages
we fielded a downstream Fedora question about where the
information went.

You can see the request here:
https://bugzilla.redhat.com/show_bug.cgi?id=2405343

The request for enhancement is basically that the "see also"
should reference all the pages that were split and moved.

Thoughts?

-- 
Cheers,
Carlos.


