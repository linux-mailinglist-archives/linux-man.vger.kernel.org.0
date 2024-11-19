Return-Path: <linux-man+bounces-2049-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E019A9D26D7
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 14:29:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A09B92813DB
	for <lists+linux-man@lfdr.de>; Tue, 19 Nov 2024 13:29:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D25501CCB48;
	Tue, 19 Nov 2024 13:29:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="jVOsNO6x"
X-Original-To: linux-man@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F18412B93
	for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 13:29:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732022981; cv=none; b=WVnqy51YzAiY1an9PrzMcya3wZM0fxT26ngeoSV2Sqx+CsM5Pvnwm1w4KLRg+9QDHlI1uq+GzO0uEAaENXSy79TduugvvonE6dsEXtBo1NSNGDDLtLAyWFDwaWw+8du5r03TosaED+LM772fh7XM44bC8sU5m3qYR2cwz7tEhA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732022981; c=relaxed/simple;
	bh=bzb/1tSbYS7mgjU2qV3y3r1YqobjpySmr57QvOBtdRA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=n4q7vUp7s7Gpf9E5FW+y2PrBrGcvSNdpnKIHjrAZtQpP4Xq7QzmmlirMssSKWvJO1na3w4HFLLRn1Q2CswJSci6b3+rlz4bGF/r55r4rzp7cEE8D0pOXX8J2Q+Pwf0Hh+XHhDExkvpmM33OFesRyuO3kvk+KuwecJwlfMQw7vCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=jVOsNO6x; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1732022979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
	bh=x0GuqYVPc/C/giAVIT0ZS3+rbmavp0a7USUZSOlLW7k=;
	b=jVOsNO6xHVrr5B9DIsAv4Hbasuk6M49YBGpgetnHAH3eRYSRGfq2DsF3GOIEwCv+nfR3ao
	o3okWaHlF1OwYjWFllHvifrDjuh2dhSY7lJ3GMjGmb7shR0SjfnBfZqfbbZXxGYsXHHk2l
	/Ud3aJs0R8EsNBi8CjoK0StPvqvdAeA=
Received: from mail-il1-f200.google.com (mail-il1-f200.google.com
 [209.85.166.200]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-212-bgKLBgAiOyakMUBhDuzE-w-1; Tue, 19 Nov 2024 08:29:37 -0500
X-MC-Unique: bgKLBgAiOyakMUBhDuzE-w-1
X-Mimecast-MFC-AGG-ID: bgKLBgAiOyakMUBhDuzE-w
Received: by mail-il1-f200.google.com with SMTP id e9e14a558f8ab-3a763f42b35so18310075ab.1
        for <linux-man@vger.kernel.org>; Tue, 19 Nov 2024 05:29:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732022977; x=1732627777;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x0GuqYVPc/C/giAVIT0ZS3+rbmavp0a7USUZSOlLW7k=;
        b=WLiWyixQiYWurKBFP5SsXOM/yUGwPsFScV9p77hUI20T6pE9IHuZSlkdMGnCxv+TM6
         ehPXnRzPYW7vwhoIrA0hpX4qSkEZXDMY3+RxdxisfEuaAH3gYm8wvxHtk55r+4CWRePF
         VE0XrSz4tPm2szaAiyIYgCV4oeLMX7Z+s5fyc2PDK455wXfah3RDdbF5tyhy3PLk6D5v
         wHo92A+ITWxYGYpwxB0k3K+wMNPNch8fe0d9yNtI7jZj5c55mB5Nua67jcGKGZHwkc/M
         +zfa3yedqZ3+cYpRyW3aCgMQLuvqwuReKbMiwIDaCGJHiLA42pzSTOXYtyOnHnyf8QjN
         QNMg==
X-Forwarded-Encrypted: i=1; AJvYcCVJOakcO2p7Rtv4pkgtVq2JX+772WPsp9EFNFeAOhfXlFwtSZ3UcyOlu/vQEls4XHD/58FwVMOAiD4=@vger.kernel.org
X-Gm-Message-State: AOJu0YzVuBFuXNRQ1KvE6AI2ncZbV8Rc4/TQ+3AUCNrcjie5gD8+ewbf
	1xxuKzkUuPAIaJCFnAHXl14ux+QFktoWxk4UQQlyFhquSV5VCdTtDbidkJHuPIkNbqZh2mOmfMZ
	ZAUj97NbKKs2MXYMx0+b6qEgoHdyJMacgRhAHGAr5bCayAT0CaRccBBMAzw==
X-Received: by 2002:a05:6e02:2208:b0:3a0:9fd8:f70b with SMTP id e9e14a558f8ab-3a748021b9emr189113645ab.6.1732022977213;
        Tue, 19 Nov 2024 05:29:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGnorM9zXXifhCcJdeW/IXZAJSfjhTLRa1PcXHNWMrtqTAMivfIpmFUQ8dDpccSGxJ683crCQ==
X-Received: by 2002:a05:6e02:2208:b0:3a0:9fd8:f70b with SMTP id e9e14a558f8ab-3a748021b9emr189113405ab.6.1732022976893;
        Tue, 19 Nov 2024 05:29:36 -0800 (PST)
Received: from [192.168.0.241] ([198.48.244.52])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3a74806ef2fsm26338445ab.13.2024.11.19.05.29.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Nov 2024 05:29:36 -0800 (PST)
Message-ID: <8c9a2898-1a2d-46de-93c9-2b46b65f1811@redhat.com>
Date: Tue, 19 Nov 2024 08:29:34 -0500
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: Issue in man page sprof.1
To: Helge Kreutzmann <debian@helgefjell.de>, alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
References: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
Content-Language: en-US
From: Carlos O'Donell <carlos@redhat.com>
Autocrypt: addr=carlos@redhat.com; keydata=
 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
 O0FatDMfJw==
Organization: Red Hat
In-Reply-To: <ZznJf0DLo7CVHddl@meinfjell.helgefjelltest.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/17/24 5:46 AM, Helge Kreutzmann wrote:
> Without further ado, the following was found:
> 
> Issue:    Inconsistency detected by ld.so: dl-open.c: 930: _dl_open: Assertion `_dl_debug_update (args.nsid)->r_state == RT_CONSISTENT' failed!

This is no translation for this assertion failure.

We don't ask glibc translators, via the Translation Project
(https://translationproject.org/html/welcome.html), to translate the above text.

This is early in the startup of ld.so and we cannot translate this error message
because the infrastructure to do the translation is not usable yet
i.e. elf/dl-minimal.c:__assert_fail.

Once ld.so is fully relocated and setup we can start translating error messages.

I don't see the above message in any of the man pages text?
 
> "$ B<sprof -p libdemo.so.1 $LD_PROFILE_OUTPUT/libdemo.so.1.profile>\n"
> "Flat profile:\n"
> "\\&\n"
> "Each sample counts as 0.01 seconds.\n"
> "  %   cumulative   self              self     total\n"
> " time   seconds   seconds    calls  us/call  us/call  name\n"
> " 60.00      0.06     0.06      100   600.00           consumeCpu1\n"
> " 40.00      0.10     0.04     1000    40.00           consumeCpu2\n"
> "  0.00      0.10     0.00        1     0.00           x1\n"
> "  0.00      0.10     0.00        1     0.00           x2\n"

This has no translation today.

This *could* be translated in glibc, but we haven't marked it as translatable.

I expect the reason is that we align the columns precisely on the given English
ascii text in order to produce a nice table, but with a translation that would
need to be adjusted per translated label.

Thus for now this isn't being translated, and to translate it would require an
RFE to rewrite elf/sprof.c in generate_flat_profile and generate_call_graph to
handle the translated column width correctly.

-- 
Cheers,
Carlos.


