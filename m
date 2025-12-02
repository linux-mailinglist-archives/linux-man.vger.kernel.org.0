Return-Path: <linux-man+bounces-4358-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 541F6C9B7DC
	for <lists+linux-man@lfdr.de>; Tue, 02 Dec 2025 13:28:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0AC213A5600
	for <lists+linux-man@lfdr.de>; Tue,  2 Dec 2025 12:28:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EECDF312813;
	Tue,  2 Dec 2025 12:28:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="QPaLAFwf";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="tMrPqIWj"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197AA311C13
	for <linux-man@vger.kernel.org>; Tue,  2 Dec 2025 12:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764678507; cv=none; b=OAnVCQphN86Z095vRTHX91QTkhBC2btIpjZ4I0CJtqcDzW4hmGM6FEtrFoP6SiFhMABKyZvDqWAhamzWhg2LbwFub+aTn1XFBThlx7HYbjvOh7Rs+8t390px3776sEo0Ru0MKdyBiAPTLx8vFfIxsQ6YKhnwkRiUDHL2a8d/GzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764678507; c=relaxed/simple;
	bh=PtSIIPJziTvz2Rxx1JedkN0gSZ07812KC1NiD2QXfAY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hppkt81a215jp8Tvg5JMjKy3f+uvjUcZiD8IUpbA/I7y2zESBOl2k+dbffomgNE/qy0UxxxrSm0LBn7Tz60woPKpb3of2rg3GarJp2XUJUAiKQlfObFE0V6yJbZsqsxdKKLnSzO4G80s8E9W9nTy9bm43WBm12Oc6D7ZS+VjYLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=QPaLAFwf; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=tMrPqIWj; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764678505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=gqDPShGZdMwoLAI8F5knysXkd8eGQD6G6FYwGnm8g6Y=;
	b=QPaLAFwfLsvOcRYtv5Brk0EWKs8UBK4s9cgPXr7YwWcKX3v0E2DUThpQqQT4UUzZuZCvoR
	wPRRjqrruYhfXStaMi4HMtoXvvPIUw7jxnOdo0MGN1zOefBCHkGwxbuq2toJg8LNiCDd/q
	1kilZ1mcfUzNF1q2393lRp1pDdEb0bI=
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com
 [209.85.219.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-623-E3nfKg2fOtOky7-a-aR0Qg-1; Tue, 02 Dec 2025 07:28:23 -0500
X-MC-Unique: E3nfKg2fOtOky7-a-aR0Qg-1
X-Mimecast-MFC-AGG-ID: E3nfKg2fOtOky7-a-aR0Qg_1764678503
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88050708ac2so30318046d6.2
        for <linux-man@vger.kernel.org>; Tue, 02 Dec 2025 04:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764678503; x=1765283303; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gqDPShGZdMwoLAI8F5knysXkd8eGQD6G6FYwGnm8g6Y=;
        b=tMrPqIWjQBVBeQX2wMa95IKYfn/M66COasVceQ5ASQ5w1kp2XKGIR27JCPSKwFrLm2
         ZG7fw2LW/1JPb+l/eN6fNn6/G7RdRppP+mJokTHokKUHmErrAxJ/En+oWTkzk1+d5nSQ
         KU3yS8WqqhHdg50hwkHaziAbxfDB1txYlEVB3AF/IgW0IGe1Js10LM+Iz9btYPS/kLeM
         2eVsId4qdz6L/8gsYAsBL40fkrMnwEF3kidFUPAaCSKyg4yVNXa5zm2o7cjTrMwfhyIw
         6BLp5oU4ppKgwGWC1obdmVdnEOlOrkXIf85/47FvaXoK4hq8T6M5zegqR5FTOZiDg/p5
         pLSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764678503; x=1765283303;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:from:references:cc:to:subject:user-agent
         :mime-version:date:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gqDPShGZdMwoLAI8F5knysXkd8eGQD6G6FYwGnm8g6Y=;
        b=sqrA4QJH19YuAKFPMDWMtGg0BUqRPFdmxNu51IoFta92K9hUa8dsQxTYqxOxvLFwID
         AfTqc8fiETAsQpEK0BCdaDqnpWoebTossohAbYo0mpjmI0j1dIKk1bG6zLu61evPF6/G
         AdFMvPpgNILGv3a+d9rTXh5xHeQofjPOdtGzD49DGjlybVZP+xNYXpzuqFVuZBsGJfkD
         2XvCVL23KtIwlqFJRoyRDHJLhlMgKxp7XuH4ZbbxcySnJ+KBkxGq2jPKlIolY2Xm0VRb
         SVahksUz2LqFBfHEN5LESm4cTo4nRc3fvtszo3xLyBB524IEDlJhZiFiAJ18/7I57gd2
         sjuA==
X-Gm-Message-State: AOJu0YygagVFvGVYW3Zu2DednfyTC/QznIryhVDZgyBEK5/Uds29ht/i
	+6Ig7orCxWTmmaQ4VIYSnYh3SD70iF/V20BI36dgTVwfrHZo//dAgoDM8uebuLh1Cn4zZ2TsYAE
	KOZ36hp6nnQuVNZEOJWikhhpFTKYU81ffb9Wq4HI/yFTjl7u2UFCZ+dQhP4h5pg==
X-Gm-Gg: ASbGncubtO3NMPOb9bjEWpXyFXDsJ9YOaVs8EbnutwyxAp1rxQfPaLxI7UxwWdbtsai
	IxrdZIsIIiTP1DUb71+HAitG3NOwxOesS3gmvIan2EYE+HJdr486+crnuDx2NtW2R6Pros0JDOn
	eeLa0qZmWuG9vVZj2Yb2tjZomg3lTpw4ZUmIjZExrRr3YliAuyGeSM1BKgNaT04BArrHx8BXR7b
	AdnD+Suoa6/kjdgAuyEiBWGSnNi9UiimO/R+yNHi4okcbopXCqPm+CCQWfQCrN7AaoNC0CUoPuK
	fmdZIjoOXJULWLxOwmVOQkVch9YROz+TaoCAWz9QteEG8hhHuKIhnnmCrEeBggE7vdma4ZJzvWx
	ta+aeZd17lUw=
X-Received: by 2002:a05:620a:45ab:b0:8a7:2373:1c75 with SMTP id af79cd13be357-8b33d4699afmr5828267285a.49.1764678503246;
        Tue, 02 Dec 2025 04:28:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFnTNK0OrpdCGMUqxACkvMRdoJS7lw2SBtJxi7Q/HAlgwF+L8byuY3SoxtOgBgI++uQewLLzg==
X-Received: by 2002:a05:620a:45ab:b0:8a7:2373:1c75 with SMTP id af79cd13be357-8b33d4699afmr5828263185a.49.1764678502787;
        Tue, 02 Dec 2025 04:28:22 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b5299a5377sm1046140485a.14.2025.12.02.04.28.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 04:28:22 -0800 (PST)
Message-ID: <7ac12471-40f3-4737-8e58-9bb3170b18c5@redhat.com>
Date: Tue, 2 Dec 2025 07:28:21 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Downstream Fedora user request for additional see-also in "man 5
 proc"
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man <linux-man@vger.kernel.org>
References: <b28be8a6-0026-4911-80ea-e39d56cf2234@redhat.com>
 <7bxe6tliic2ofagysxqjoezrf5lbhnvmm2boqlzcp5ct7bmc4v@hwykucnbxeqe>
 <s2sgnfnfprsp5af2cpbfccujey63ayt5p3juac4m3ukwoga2fe@w2wdg36g4tns>
From: Carlos O'Donell <carlos@redhat.com>
Content-Language: en-US
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 m/A+1AHg4g==
Organization: Red Hat
In-Reply-To: <s2sgnfnfprsp5af2cpbfccujey63ayt5p3juac4m3ukwoga2fe@w2wdg36g4tns>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/1/25 7:38 PM, Alejandro Colomar wrote:
> Actually, it was easier than I thought.  I've already done it.

Thank you!

-- 
Cheers,
Carlos.


