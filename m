Return-Path: <linux-man+bounces-3084-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10121ACB918
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 17:57:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 180B83AE2E6
	for <lists+linux-man@lfdr.de>; Mon,  2 Jun 2025 15:49:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7A2F222580;
	Mon,  2 Jun 2025 15:50:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b="Z6OMPFZp"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-io1-f51.google.com (mail-io1-f51.google.com [209.85.166.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9BDE221FCF
	for <linux-man@vger.kernel.org>; Mon,  2 Jun 2025 15:49:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748879401; cv=none; b=RdARIKZZwIzTlo3IIsyR/KD1MSigKda7IbxBK4nQFcimwuKg15LQCE8cgYxN7+NgJSsyVe64brm18ui3mzA1pkwcGXb2mrkNPIRBe1YKXBWYbKmuTuKTGPUS2QGMOOOMkt5W3+aFo3iBXjEigzENlW66PyvcvIbxYKmlL+ghjcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748879401; c=relaxed/simple;
	bh=tczUiRjlTp3RwmOBy9AYBDcovS65UpjfipjjReW8rfA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NxBdkbv7HbhnkJ54ghzVXpemmJASQpLWL0zykwqosZB70+x08tZ945ioHJNcBLvtcNcWIbQSpp1FubF84VaDVWxd4srE/pOqWW5R6S1zP7Sd+gKcQ8XM2WNdg9cgXjzuSpURu0z5zAoxwmsQv8VYWbTJpREUhlvB8oT2CaOyZ3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk; spf=pass smtp.mailfrom=kernel.dk; dkim=pass (2048-bit key) header.d=kernel-dk.20230601.gappssmtp.com header.i=@kernel-dk.20230601.gappssmtp.com header.b=Z6OMPFZp; arc=none smtp.client-ip=209.85.166.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kernel.dk
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=kernel.dk
Received: by mail-io1-f51.google.com with SMTP id ca18e2360f4ac-86d029e2bdeso94914439f.1
        for <linux-man@vger.kernel.org>; Mon, 02 Jun 2025 08:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1748879399; x=1749484199; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H6v19i7kKfVrC2Xhb2Emo+ZHvGgRU1zTVb1f0prv7kE=;
        b=Z6OMPFZpJ3Ae6Rh52A7ay0iMKw/lsHeXUKHoK/LtPV5LeP83kVSo7l3gPg8znQTJa3
         6v6XAw5NFt5Ari5U4sDWqeC8VIV9mmsddxEAubohQb/ahXUxVhIU8eTK/A/QK8dKwKZz
         qXRZoIaNitvfN4H+uiBJZcbSq9v1YSsK3rXjWPbuWCinnn+Oejvn96QWDXXYf53FRMq1
         kxSkSKMaK3xsfAmznVEZgPpXgRhwrT0fI59Fft+o5jtSNCn7G64TG2sTLtNJzs7lpU03
         1XPczlONo7qGf9N0Wf+Hm+yalYonk/Gytmhn7Yr/EZP+aK/TjPVByXfrdFXKl5ZOzn/d
         Cwhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748879399; x=1749484199;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H6v19i7kKfVrC2Xhb2Emo+ZHvGgRU1zTVb1f0prv7kE=;
        b=MACzSBmelcWh6/pesl/gM62ZSXuHg2aeAQBg69QCTQyS0wLsmfpXTUlqvEyJJlA1Ff
         RT4D82JnoPV5IHNnHPbuJGxsf3mJjT6QZOXwlgQr5dnFjfMSKRR7j42ZPzOmq9b103BD
         MfIg9iTwoiaqi7CBAzuqzjjUVJP0loLTeohMcf0o3M+d8Eod1hpldPDlsJdYMlbo60UF
         M8+v7PU5pJU2a+H9NKdK8Q8sKqR6l8XYvELHedkbZ8XYAOdraiZHmHQPDX4Kz+PjchZk
         /ASVYqtS4oXcCVp4Q3Ju7BSjC0Nx/rNjvFK4K0/1VmR+rHfTclvRGjHyRLckmUFCYr+p
         1XvA==
X-Forwarded-Encrypted: i=1; AJvYcCVO0CEZvOfGiNxUjv6XMbd2DUYNn7P+1naEZGwsSK7BFTlP7DFDWAKKKgywWWBuL6dsEjtRkoz+9/o=@vger.kernel.org
X-Gm-Message-State: AOJu0YyXbdtw2oe/5RlYthj/2T62VH9PTEWxkFtHk2vGiWpTVLa4/rsw
	OHVOerZlILYvIcaURLUHD9BzYzqHS4EGt/nBozz7jcSQcAFR84wmbqfs3VXLZKnwKNk=
X-Gm-Gg: ASbGncsVgg4O4rREpD0v94QUj7fwW8cD1P9LZ+a4p4pOwu535C8CLG39QAieu5ykxuJ
	uQ832C4LLYRGDwSz09Jt5iiXgyw49p673cFtxU6ZTzn0Jc0N6y2qdj9emJNOxjc5Ml6Fu0+XBgq
	KzsqIeDj/o6RSDyKq8/Wk/nWJ0G8rDNjl6+tui5QVSmn1uUASoM7nf7dkCHGKBYLOb2JX1YLY/3
	WCzE7FKojDQRkdk9xGIZYPzSEuE6e3FnJESgZrWerqQuiinO3hiIsQLfoN+vc5mcoTWx2xVlDXJ
	Z5kS8UZxow2yBWxOWq9eSb2zJSXzJRsJ1En2cNcVaWGEAwE=
X-Google-Smtp-Source: AGHT+IF73EFj0E6muJqVVBpCdPYgNfFOqoHv1N+n+Y6GwW8hBHOYnaxhGyPNCoPnXXSLVoPDytP+mw==
X-Received: by 2002:a05:6e02:378b:b0:3dc:8682:39ca with SMTP id e9e14a558f8ab-3dd90b97d98mr188316955ab.0.1748879398620;
        Mon, 02 Jun 2025 08:49:58 -0700 (PDT)
Received: from [192.168.1.116] ([96.43.243.2])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3dd93546383sm21728465ab.34.2025.06.02.08.49.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Jun 2025 08:49:57 -0700 (PDT)
Message-ID: <cb062be5-04e4-4131-94cc-6a8d90a809ac@kernel.dk>
Date: Mon, 2 Jun 2025 09:49:57 -0600
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: RWF_DONTCACHE documentation
To: Christoph Hellwig <hch@infradead.org>
Cc: linux-fsdevel@vger.kernel.org, linux-man@vger.kernel.org
References: <aD28onWyzS-HgNcB@infradead.org>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <aD28onWyzS-HgNcB@infradead.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/2/25 9:00 AM, Christoph Hellwig wrote:
> Hi Jens,
> 
> I just tried to reference RWF_DONTCACHE semantics in a standards
> discussion, but it doesn't seem to be documented in the man pages
> or in fact anywhere else I could easily find.  Could you please write
> up the semantics for the preadv2/pwritev2 man page?

Sure, I can write up something for the man page.

-- 
Jens Axboe


