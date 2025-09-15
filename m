Return-Path: <linux-man+bounces-3872-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 88125B58674
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 23:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 47D47201AA4
	for <lists+linux-man@lfdr.de>; Mon, 15 Sep 2025 21:15:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2DF22264BA;
	Mon, 15 Sep 2025 21:15:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FR/hbOOE"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C3F529BD9A
	for <linux-man@vger.kernel.org>; Mon, 15 Sep 2025 21:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757970932; cv=none; b=edHEkwwZbyljj/m+5T4jOB3+gGLAMeec/pmV+xIDY5G/DK9z/PA8Jmgy5FdjPm+un5PD52ackX7YZ+3jUyugg8QctjkwKYQUgKULhWyDVg2I0ajGob0zldhpNWzNd08Qy2k7WXeKQO6fGUgD75+6GJ66piQWO3B44RBZv0mXuqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757970932; c=relaxed/simple;
	bh=BpIVMA0ugWZ6gwrL77R/JZ/m70/kk+nt5vinn1J1WEk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=BIIoTnxMCTpruFhdHlA1ZSBP9pF5Z8Sxnww1JQSfgDCcRtkUUTnBpuS7KFq+9yrqfVxTVoZgfdy+F78AFZe3paTqTw5HOIZUXZiuqk2azhFORF0VZqStn9+KiFQ20E6XDn6uRm46e5n4j8U1z5pBy7YjxI0jyjSWw/C1pHX91tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FR/hbOOE; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-32dc6616f7dso3566683a91.1
        for <linux-man@vger.kernel.org>; Mon, 15 Sep 2025 14:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757970927; x=1758575727; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KDW3pfMKL1W7Dmx7OH5Hta6+6nJlM1FzYl6pw3R0OTY=;
        b=FR/hbOOEGJICH/5An5Igz/WYQPTw5OlW79G3nuAetTlOtDd03xPNmVUY0v7OQFxjLU
         maembN+Gk810tpjb13skaGOivo0w+dzTUn5sXYe9tiYV8MHtSb9WenTqQuSUx1RxZXEN
         3j3pXS5kOwxKtrassFEheIz2TTzWkDkngGj3WAVDssQqD0dE0icT3scliScDiGrZJYSu
         RiXA2P2y6ZggK4gm/v5L+BR77+CGZgqYx7s8By/5neVSKToEg6L+Y5EF7ZakMnFVNAho
         zijoUQi/Ju64lsng1gCbE3cW1b4VX1w7T+3BJi8vZMEVXWjVr7BavlssTd0mOyfL0ZoG
         j5Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757970927; x=1758575727;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KDW3pfMKL1W7Dmx7OH5Hta6+6nJlM1FzYl6pw3R0OTY=;
        b=XIl2kcgnbhwyduTxFql8XMBq2sdCUFiSEv4TRJzfoZzXmGy6J3kFnKmGFNOeGpygQM
         2HzLlWRhqIkb0U8IKNwcH0rUQWZ+KL1J66KyDh3QgY0aSaqF1hp+m4H0k9jmmmn17RjQ
         MRyhWLpoTD1Yi9rdNG4WAApf32nc0d8TxKgV4Hje/vPO7aDrP3vQrj3fdXIwYeXqT3QM
         stKnqjZVUCSMPVLQk3cD6rGkOzdKd1y3DMhzXY4z0DZa3PUFAmtGRudABqy/vbWqJCCm
         saWyBRZ9p0CRUSxUaWzVYjUGMiRUxLjtvUn0BqMtZsSJV8hvLymwWs2k02k1MBRteJJv
         ePYg==
X-Forwarded-Encrypted: i=1; AJvYcCXDhqp21EG6Dqqzq3bRhVnTnIgDyQwaYP6HrzkOM93gEs9pUv7P/9By2WIS/vyFY5uhjuBTByOKy1E=@vger.kernel.org
X-Gm-Message-State: AOJu0YwVQF4xjX3C1wlv7OHXdUQgGPm+UAmbhcNQBfoeUpdR/3Tv3lok
	KDXR5CF/VGiO2n9Kwptl7mbh/5kPcJnn0kIG+LC2+7l7gGSItboogyXlxR5h8tSHq/c=
X-Gm-Gg: ASbGnctVue8eiC+9x7aGQMUYVfTsLx/BDgq/dy7IXoyJZHB0WXjrZA48xHR9RBV2nmw
	S90Er0AzHht+3IelroFSBwZb37ENjInyUDdikslZq3ZPSq0q54DQGSiQo0aKGUdKkzwCoB254De
	25h4K7cHupJavq1Lh1tpBl4H8K1VrrVbfRkZLkzW6UZMlyaAfmxizz9ScVhFqZNIrd63i10vL1L
	+C0AkKVOvqA3ywZ3I2HhtCPWduXT12XeJmDywwXBngDl9Azza6QCX2kIMNs+R8TBHVgmHhxqFX+
	3hvVg7CJWY4FBzToTqMUJPJTmfL9UIBXarr5/VFTX2wr/qdIfZLWZu1v4SjCphaVgUkr/a6JjOC
	31G/OG7v1k2Dzl0tFAt5/SdQhcBCQ5WpuR/hQ+mgWdziHKUi5XihI2g==
X-Google-Smtp-Source: AGHT+IFYzGgjWFL6UdW1cHQaB5kXtrItFPWpqEcx9e4NFtYbRu5Gdhg31EOvwtLlRITpUOx/pRrp1w==
X-Received: by 2002:a17:90b:4c49:b0:32e:3c4d:ee77 with SMTP id 98e67ed59e1d1-32e3c4df01emr7655067a91.12.1757970926338;
        Mon, 15 Sep 2025 14:15:26 -0700 (PDT)
Received: from localhost ([2804:14d:7e39:88d6:11b7:f5b7:a687:ea2a])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-32e37005a82sm5872300a91.16.2025.09.15.14.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 14:15:25 -0700 (PDT)
From: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,  linux-man@vger.kernel.org
Subject: Re: [PATCH v2] man/man2/sigaction.2: Update si_code list with Linux
 v6.16
In-Reply-To: <f6hoajtp2f7szmtbv6fsixrkr3qodc5m6savzkphjsmf5ucll7@l4bu3zqdz6rr>
	(Alejandro Colomar's message of "Sun, 14 Sep 2025 13:31:25 +0200")
References: <20250909191357.44951-1-thiago.bauermann@linaro.org>
	<0dc0e482-1d1d-4a15-aea8-2f24ec7187a4@redhat.com>
	<f6hoajtp2f7szmtbv6fsixrkr3qodc5m6savzkphjsmf5ucll7@l4bu3zqdz6rr>
User-Agent: mu4e 1.12.11; emacs 30.2
Date: Mon, 15 Sep 2025 18:15:23 -0300
Message-ID: <87zfavl8no.fsf@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Hello Alex,

Alejandro Colomar <alx@kernel.org> writes:

> Hi Carlos, Thiago,
>
> On Tue, Sep 09, 2025 at 03:44:06PM -0400, Carlos O'Donell wrote:
>> On 9/9/25 3:13 PM, Thiago Jung Bauermann wrote:
>> > Update with missing si_code values from Linux v6.16's
>> > include/uapi/asm-generic/siginfo.h.
>> 
>> LGTM.
>> 
>> Reviewed-by: Carlos O'Donell <carlos@redhat.com>
>> 
>> > Signed-off-by: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
>
> Thanks!  I've applied the patch and the Reviewed-by tag.

Thank you!

-- 
Thiago

