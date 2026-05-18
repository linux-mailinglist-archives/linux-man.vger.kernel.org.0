Return-Path: <linux-man+bounces-5556-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0F82OsFbC2oCGAUAu9opvQ
	(envelope-from <linux-man+bounces-5556-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 20:34:41 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AF19572542
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 20:34:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A8AFB3041A1A
	for <lists+linux-man@lfdr.de>; Mon, 18 May 2026 18:27:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2B4A1DC1AB;
	Mon, 18 May 2026 18:27:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hdE6keNj"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A48329D291
	for <linux-man@vger.kernel.org>; Mon, 18 May 2026 18:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779128872; cv=none; b=otnN4cdY9vxUTB2rHdnaCpv44UP4fYhhBh2bl2zDsKQcnbrdqCrQT2TZDP0HGK5MRuvHQRn/oMWmmhAmt5NsbGKaVaIxxYdBtgjY7J04Jwq0tyVqSeQ3CrSpRQzg/K+cEA4O3WGa/a5gWrfcd8VGFIckYlpOS7I8kneP9fk8Eic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779128872; c=relaxed/simple;
	bh=kJnNhDJTI5nL/qadxMqkVq+0hHshgz5obzAizQ0Dp9g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rjAuqBQA2cg2EGS7BIPTr9cZyzo83Au1dgbBOgdXrfoXxVxdJGenmzIDNlEb7GSSuzNvhdk38UbIBOSbbhrEGuyPdRpBvRAt7A3wHnBfjkgCRlYVJ60J5AduH5SdZDDQ5Q+qKYk8QM/hFK6bfP+Kkum1Yf2bKj3peIDzaBJ3eYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hdE6keNj; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-90d13fa59e8so281663685a.2
        for <linux-man@vger.kernel.org>; Mon, 18 May 2026 11:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1779128870; x=1779733670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=uqdJ8fx6ztv04IKrVZlX/2N1p0eIsuGw9mH0YLy5HJc=;
        b=hdE6keNju1tbjEstK0F/DBBd0y8x+RlQvTNTQYUXx/t7AJ4r4JhJ4ZMOv//B1LgvRO
         1tmdkshVw/dAQSJs99J9fXXqxlI5TJQFX52XxvE7A2RkjIxpKMmR4vNT33JpvblEWgq1
         eyxmz1OJwyOg9KvjQydcDC39wWS0C9om+uKRrWZTFxPUm3NaQy2iaY+pUobL4rKkfAnT
         q0KLrbcTY+wcjkA+dGSLVnBSUjvoLuZu8cD9YnVciQFrMulbEgy/RMOlBrLQcjCS0jll
         DIF2/H7UNAvV+o5ieGjF7rfECFBSkLPktX0oXXGEfYkug+sYrOZbC886ZBTfwsZWIPCW
         5Pdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779128870; x=1779733670;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uqdJ8fx6ztv04IKrVZlX/2N1p0eIsuGw9mH0YLy5HJc=;
        b=LdVGpApnflzEKJWipnusogESfqno0DKi8mUsuAtqG7FG2Kt17oM2xnHjXas0jeQpSx
         h6l+xINqJgxoHaNIVxUf4mjmeB5CKaAzl75DKKjp+YYqBAUZ1XlFda5aExZoPZiwMiRz
         Dj2B5a7X5zp7tGWRIMI4u4QhRb60Kw8/PXj4oCgthmCG9tNuw6rIukOyzisHcRay7n64
         8j5fTfMxIVppTXksCJ9z9V+sXg+rjDyNmWwJz5eS5CMI06bE+Uqi6YDVxPdyPwNg4VFH
         76HF5Q7mDmiJUEMekw8pZuHQBxATKa7KLGiksIhHBTw2v74ck5HIT/ivWhdP5gzrnYzQ
         vOUA==
X-Forwarded-Encrypted: i=1; AFNElJ+ZS8B1sSWETxCo/lzfWp7Eik7utKE+RqqZOwj7/2QO0tXbZ7qiBrocFp15o1Lw5PQ9Ye7Gv4zdVDM=@vger.kernel.org
X-Gm-Message-State: AOJu0YzcYTE3dC0+wRUoGOB4NrW3SDM8OCzcr7axaZG1shIemusWQd/E
	Qd2GUcjoxSF0dx0rCCfpfePEJ5YgInM8KDVsjygiFkf9JpQGQYbk5MFTY79Y9L1Le4ilThJWEue
	bJET4
X-Gm-Gg: Acq92OEODQiN8FnBJg10evplVORK4Qhz/EldHtitLf6DWc1bToLbGGHpYkccmWVKS7U
	VZSBXt/Sl1nATIJ6aaDNatGknIP0QqmOcka22U74KJoo/y9GR9qW9VNUURfwwKF2sjAq8tfqarv
	sJe96BMYRBEeR+Ok/DTlX++kLm1k9RNrPErJL5M88Adl7xipMBdg/Yzw6UOzbUC3NC05kVunO/7
	tDLeCuf8FiJ0243VYMmGrjotW2IdJU6TM8HmEs7O835RrHzz1FVE8KZB8G2WAqbXoUdDEkOzK+1
	90OgSpJ8L5WNDe/5ct/4+SnrhO4cOYfORGKcFEpTQy5NsTLZsBkRelHle3ZOrxqsibKKDky2a6C
	PkcI/g5D7VuRwxpowMOEO8fSqkKMmuDF3psX93/xNuQ5ktLaeOQD+tFb7lhICSbe+oTiDHhmqq5
	vlNaTRuNyxi3/6q83ezAzACW6L5Ybqx1waqcrcf6ifKtQbrnlMQWMnCVNhbF5OybuBSZ/vKOVyd
	fAMivXi2vhMdupYCjz2XTZMnmBuJkwVXg==
X-Received: by 2002:a05:620a:698a:b0:8cd:8884:2509 with SMTP id af79cd13be357-911cf2f0e0cmr2464121885a.55.1779128869893;
        Mon, 18 May 2026 11:27:49 -0700 (PDT)
Received: from ?IPV6:2804:1b3:a7c1:d905:ade5:9efb:f9fb:f113? ([2804:1b3:a7c1:d905:ade5:9efb:f9fb:f113])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-910bc83ff00sm1573560585a.26.2026.05.18.11.27.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 May 2026 11:27:49 -0700 (PDT)
Message-ID: <3f25c270-f957-44a0-a522-3ec48ce91ca0@linaro.org>
Date: Mon, 18 May 2026 15:27:43 -0300
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: non-standard const-preserving string APIs
To: Samuel Bronson <naesten@gmail.com>
Cc: Alejandro Colomar <alx@kernel.org>, Florian Weimer <fweimer@redhat.com>,
 libc-alpha@sourceware.org, linux-man@vger.kernel.org
References: <agizh06CdDnhDvAB@devuan>
 <c57574d1-9031-4ae6-8cd1-0e74931b9af6@linaro.org> <agnIOfwI5KKGwS_I@devuan>
 <0c1e8b52-68d3-4be4-84aa-8ab5bdfee29a@linaro.org>
 <CAJYzjmezHCPUUpE+w35+TB_70V3=BGq7uD3geEdywP5-OXSU-g@mail.gmail.com>
Content-Language: en-US
From: Adhemerval Zanella Netto <adhemerval.zanella@linaro.org>
Organization: Linaro
In-Reply-To: <CAJYzjmezHCPUUpE+w35+TB_70V3=BGq7uD3geEdywP5-OXSU-g@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linaro.org,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[linaro.org:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5556-lists,linux-man=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[adhemerval.zanella@linaro.org,linux-man@vger.kernel.org];
	DKIM_TRACE(0.00)[linaro.org:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[linux-man];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,linaro.org:email,linaro.org:mid,linaro.org:dkim]
X-Rspamd-Queue-Id: 4AF19572542
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 18/05/26 15:17, Samuel Bronson wrote:
> On Mon, May 18, 2026, 1:19 PM Adhemerval Zanella Netto <adhemerval.zanella@linaro.org <mailto:adhemerval.zanella@linaro.org>> wrote:
> 
>     On 17/05/26 10:59, Alejandro Colomar wrote:
>     > Hi Adhemerval,
>     >
>     > On 2026-05-17T09:22:41-0300, Adhemerval Zanella Netto wrote:
>     >>
>     >>
>     >> On 16/05/26 15:15, Alejandro Colomar wrote:
>     >>> Hi!
>     >>>
>     >>> I'm working on documenting the recent API change of strchr(3) et al.
>     >>> to adapt to C23.  While doing that, I've realized that the related APIs
>     >>> that are not standardized by ISO C, such as memrchr(3), have not been
>     >>> changed consistently with their relatives.  Has this been discussed?
>     >>>
>     >>> I think the inconsistency might be dangerous.  Should we change the
>     >>> other string functions accordingly?
>     >> I think it is reasonable to support const-preserving to the GNU interfaces as
>     >> well. Are you preparing a patch?
>     >
>     > Yup, I will.  Thanks!
>     I will try to take a look, but I recall from previous weekly calls that Florian
>     has raised objection that this does not solve the overflow issue (not without
>     further extra changes).
> 
> 
> I'm having trouble finding messages that seem relevant: <https://inbox.sourceware.org/libc-alpha/?q=memrchr+f%3AFlorian <https://inbox.sourceware.org/libc-alpha/?q=memrchr+f%3AFlorian>> only turns up a few messages, most of them patches; I'm working from the assumption that Florian does not exclusively use patch descriptions to convey such information? Perhaps it was on another list, or another function was mentioned, or wildcards were used? (Or it was somebody else's opinion you were thinking of? Or public-inbox doesn't go that far back?)
> 
> Can you find the message?
> 
> (Or I guess we could wait for Florian to chime in ...)
> 

Sorry if I was being confusing, I was replying to the PS:

  P.S.:  Adhemerval, would you mind having a look at my other recent patch
  set?  It was 'Add [v]aprintf(3)'.  The message-ID was:

	  Message-ID: <cover.1776882798.git.alx@kernel.org>

Not for this proposal itself. 

And Florian's remarks can be found on the previous version [1]. He add a bit
more on the weekly call some weeks ago, I don't recall the context in full.

[1] https://sourceware.org/pipermail/libc-alpha/2026-March/176018.html

