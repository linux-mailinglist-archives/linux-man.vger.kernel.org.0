Return-Path: <linux-man+bounces-5455-lists+linux-man=lfdr.de@vger.kernel.org>
Delivered-To: lists+linux-man@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCu7NkD69GnmGgIAu9opvQ
	(envelope-from <linux-man+bounces-5455-lists+linux-man=lfdr.de@vger.kernel.org>)
	for <lists+linux-man@lfdr.de>; Fri, 01 May 2026 21:08:48 +0200
X-Original-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C6A4AF0C4
	for <lists+linux-man@lfdr.de>; Fri, 01 May 2026 21:08:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80BCF3006B7D
	for <lists+linux-man@lfdr.de>; Fri,  1 May 2026 19:08:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BB335E952;
	Fri,  1 May 2026 19:08:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZNTqjnxm";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="HhRgMSre"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB04B316905
	for <linux-man@vger.kernel.org>; Fri,  1 May 2026 19:08:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777662508; cv=none; b=psor5D4dwrF/irMhTPbG0VTi/NrJCsyWJVhuaSX901iRfrpGpKvKoayVyzBwOJAZLNWYrV9guv3rlZY56m+JvV8JbSJqV6lX0mm57Soeo1afkVi6IahHerLO2SFRqnVEn6jUHdtm9FFwX2yMGdOWn3Cura+Vk6KnD9Zbrgv5+Z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777662508; c=relaxed/simple;
	bh=hF4rYSQMg7AqI7qWcp97oB61JSvV4JC95ETXHROWdmQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kn7zbA8DPWrQuBAYgx5sgKgMZODsPykyM7vw8+broBQSqPNPmwXpjjfTQApZGG090qPbdXXnPOODoIhqTccRiagCrSdJeNNwuEy70gKNec3qFRehBzZEqY0+ipVHJMn1dnLEyjEdomXtBsyJ0TifZpy/5PVXmRH3xh1LEgV4h90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ZNTqjnxm; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=HhRgMSre; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1777662505;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=srxKrZXs+13VHoikplDeDYfDrXO63OPRqgk7Ot2z5UU=;
	b=ZNTqjnxmSEpWOiAYDQRvlR9E6VSnM+egTPFOt9bwB/ZCdXpKcC5Upm/GqECap57LrE+8EA
	9BkaIPLTr5pS5LEcXTT79ecu/7H8mfG7gldio2IQ7i4NVmPTDmIvlnWSET0atZgjKAsa8W
	5n0Z3j/n/XZDiZCxSTxESnDwPbOVO2A=
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-141-qbMbE7k5O2abV01rrfBLXw-1; Fri, 01 May 2026 15:08:24 -0400
X-MC-Unique: qbMbE7k5O2abV01rrfBLXw-1
X-Mimecast-MFC-AGG-ID: qbMbE7k5O2abV01rrfBLXw_1777662504
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-50d6bf346adso34401291cf.1
        for <linux-man@vger.kernel.org>; Fri, 01 May 2026 12:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1777662504; x=1778267304; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=srxKrZXs+13VHoikplDeDYfDrXO63OPRqgk7Ot2z5UU=;
        b=HhRgMSreNwHukjr9sSEiD0RR/OR5PEwc4ubbm7TDj5D1xc2c9XZLq0HWz+H4uie6Qs
         apmnmCy6l78QIaATKH3+Pe1IGf17USWeDIa/cd2oH5HjFunpLMiq6IhQlyKf6b0DZzxa
         HhR6cr76Nnc9bFm0sSan2Q3WpzyBFGwQltNS0XtuUqVqnb/UyLdEoKxcIDT//6UgWNF3
         XI26SC/pFAf6lGr6B63aO40R5qQsPctZUG7ToFWMjXaIOTTseVaDQjpJV478gBiahAxK
         uqPiON1Nl5Oc+haY6KAkBnkvkk/DovJLf4kBWtpKfzfH9W6PWHO4VrcqCXXjJDNAhf0K
         zXFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777662504; x=1778267304;
        h=content-transfer-encoding:in-reply-to:organization:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=srxKrZXs+13VHoikplDeDYfDrXO63OPRqgk7Ot2z5UU=;
        b=GQ9U7qrljnAaJccK5gGGbyunY5uB1kVBaLd/eBIkQHkF5JdGt54jfX2hLS/38MoOHY
         ouiDDHal2LVn5Mb7/hCWDNoyOTZJC+oCvSEipQ+x4NJdaghl0Db1mk6PrCmhH3rh69PP
         FCKmE5X0ou33tLEtXGqOTlwxS0MQa45poupW2x55qqSP/vn6Dr4Nsk2PtjOQwZwgQEQi
         +fC6whJlTJCIQej621Vutu4wf7/JHJPR8cfjAYddxnh3Ylw97eUzMgVMsJvxbFwKyx2f
         Alf6D2h/8QfhbaPPhoTeqPx/YnwKbpaDuzCm4989JsBBMMifLKxCLlq61K70nZ1wUVgb
         CplQ==
X-Gm-Message-State: AOJu0Yw1Kjol4MTVRv6c7dpZSsqJOeQiAALI5cUZuZigm2jpx2vDeu2y
	ZUHHohSitX0h/aydrQuMA/S62xImjLeAPI13/e6grfmEkMlKaNK00qaMSEKaBlYz0pJA+snPRN1
	OhOlOhVRyU/i7YI653wl8BpjijwgwGC3exc5mC0RVKBagWlQeF25eUUvYpiSz0sMe59wRIQ==
X-Gm-Gg: AeBDietCJGrWexyp9zLZeP+bYMDp3IhHc5cGtswP4MjDBClNw/SOYq/d78W6x0Ahnt4
	GDLegMxvZjjheDvAUOTVTNbnJCXOgb2ccMiiH8SCXqhFw75oWPb1Xmf7mCpsobj6gi7yvc9Eb3e
	wUJCb0z9ENtEVWB1iDFOJXDL8q0SU5LesZLLyiqcnwrfEcQDTQs4Mhi8bLXjQM0NdEbAQ60krNl
	MdZ4MpkSFxzfSXbltvlo2aMNj7A60NeCR6NZxJh8hwcMopx/QLCxqRypVT8I9tw2gJiOfEjqooF
	yOye0h2EHDrpMHBFZfHrbcTIbYJLaNzRp1kwDOzj0tJ7TmyrwqeGZ3Odc9KgRLh5GGtfd9IuNhL
	dsiVMJ6jgjziRxt/svTsSkbzx7/yRXpv1EieyM4qM2xAov8F5YsjqvZwZATnE3TL5C0R/12NF+I
	DP97Br2EdqU/ivp7gJPEKOExC0TdZZtOYi
X-Received: by 2002:a05:622a:550c:b0:50e:c093:9051 with SMTP id d75a77b69052e-5104bef1bc4mr8211051cf.30.1777662503566;
        Fri, 01 May 2026 12:08:23 -0700 (PDT)
X-Received: by 2002:a05:622a:550c:b0:50e:c093:9051 with SMTP id d75a77b69052e-5104bef1bc4mr8210491cf.30.1777662503133;
        Fri, 01 May 2026 12:08:23 -0700 (PDT)
Received: from [192.168.0.116] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-51040b86535sm24434031cf.27.2026.05.01.12.08.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 May 2026 12:08:22 -0700 (PDT)
Message-ID: <eb5c6c20-48a3-46a9-9918-12beffb8e6bc@redhat.com>
Date: Fri, 1 May 2026 15:08:21 -0400
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] man/man5/core.5: Update compression format for
 systemd-coredump
To: Patsy Griffin <patsy@redhat.com>, Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
References: <20260501190609.3604026-1-patsy@redhat.com>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Organization: Red Hat, LLC.
In-Reply-To: <20260501190609.3604026-1-patsy@redhat.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 49C6A4AF0C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[redhat.com,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[redhat.com:s=mimecast20190719,redhat.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-5455-lists,linux-man=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[redhat.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[carlos@redhat.com,linux-man@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[linux-man];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]

On 5/1/26 3:06 PM, Patsy Griffin wrote:
> As of version 246, systemd-coredump defaults to zstd compression
> for core dumps, rather than lz4.
> 
> Signed-off-by: Patsy Griffin <patsy@redhat.com>

LGTM.

I thought coredump.conf allowed you to specify which compression format,
but I was wrong, you can only turn it on or off. This looks correct and on
my system all my coredumps are *.zst today. Best to update this to match
latest deployments.

Reviewed-by: Carlos O'Donell <carlos@redhat.com>

> ---
>   man/man5/core.5 | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/man/man5/core.5 b/man/man5/core.5
> index 4da5819b6..83c49d42d 100644
> --- a/man/man5/core.5
> +++ b/man/man5/core.5
> @@ -515,9 +515,14 @@ program:
>   In this case, core dumps will be placed in the location configured for
>   .BR systemd\-coredump (8),
>   typically as
> -.BR lz4 (1)
> -compressed files in the directory
> +.BR zstd (1)
> +compressed files
> +ending in ".zst"
> +.\" Since Systemd 246:
> +.\" commit ef5924aa313d1892bb491c870ba3c429454dfc76
> +in the directory
>   .IR /var/lib/systemd/coredump/ .
> +Compression on or off is configurable via coredump.conf(5).
>   One can list the core dumps that have been recorded by
>   .BR systemd\-coredump (8)
>   using


-- 
Cheers,
Carlos.


