Return-Path: <linux-man+bounces-944-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C54158CA488
	for <lists+linux-man@lfdr.de>; Tue, 21 May 2024 00:42:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E715B21701
	for <lists+linux-man@lfdr.de>; Mon, 20 May 2024 22:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4077F374D9;
	Mon, 20 May 2024 22:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b="is5One20"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.ljabl.com (mail.ljabl.com [88.99.6.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01368A929
	for <linux-man@vger.kernel.org>; Mon, 20 May 2024 22:41:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=88.99.6.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716244919; cv=none; b=N8OR2qVEdm4j+g/G0kbNWB9hMuSbnLwtq/1G3GuAiVnv3WZA3ltSPckeColXWiSPxVDo/KH2PxQsrDqFm0Hu5xJCv5MouoUFz9GSMsMTeMorMj6SRcPdLFzeZlwWkhVhEw/7j+uXDxw4aJBz5+QLAJmn1my8oNIc+tmrmLum2GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716244919; c=relaxed/simple;
	bh=2M1mH3CwTOpWMubRE+lqpYOpXrNXBq4LM22K3ULp1hQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rMgD4RQXdp2KlLdRFWi7SzSdutC1m6+/Z1w3qH9hd+0D2sbjDYV5JMLpJBEOWt0MoDkkddvAMyPtD84KKyDmMd/phguDgrUo5gTkNd8zE7wvyCj3vT/wmenBG4+TrEfXthHIzyiBqwHUX9K6hR4wgTXv/qJxySkYymvHI7H3QKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com; spf=pass smtp.mailfrom=ljabl.com; dkim=pass (1024-bit key) header.d=ljabl.com header.i=@ljabl.com header.b=is5One20; arc=none smtp.client-ip=88.99.6.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ljabl.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ljabl.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ljabl.com; s=20220906;
	t=1716244514;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4aVlmAgimrx64p2a+XhtqwmAgjaVWZwX+rhBEGh8B64=;
	b=is5One20eAzh642D1AJTMtXGag6+0u50rYUytmnDMv7l8zzav+qGm3LZNQ7eZVeupH89vG
	Vfy9g08JldXfrkgvicjLMLSCyTTtPXsc5rNDPXa+zCIjXIG6uNBUemqapdI89h+8rpfJYc
	Ld0QuOcA+JWA/KuFmHPLZjUqzhMXPdU=
Received: 
	by ljabl.com (OpenSMTPD) with ESMTPSA id acd4f558 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Mon, 20 May 2024 22:35:14 +0000 (UTC)
Received: 
	by fluorine (OpenSMTPD) with ESMTPA id f1bb4d7b;
	Tue, 21 May 2024 00:35:14 +0200 (CEST)
Date: Mon, 20 May 2024 22:35:14 +0000
From: Lennart Jablonka <vol@ljabl.com>
To: Alejandro Colomar <alx@kernel.org>, libc-alpha@sourceware.org,
	Eric Blake <eblake@redhat.com>
Cc: linux-man@vger.kernel.org
Subject: Re: LINE_MAX
Message-ID: <ZkvQIlVNJ-aYs9RI@fluorine>
Mail-Followup-To: Alejandro Colomar <alx@kernel.org>,
	libc-alpha@sourceware.org, Eric Blake <eblake@redhat.com>,
	linux-man@vger.kernel.org
References: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <qjp55g4oisyltajr4hckjgqjfbfwx7w5jwfgpeuqhdghppxrft@khoxlratj7kl>
Content-Language: en-US
X-Clacks-Overhead: GNU Terry Pratchett

Quoth Alejandro Colomar:
>I think I found a bug in POSIX.1-2017 (and probably, previous ones too,
>but didn't check).
>
><https://pubs.opengroup.org/onlinepubs/009695399/basedefs/limits.h.html>:
>     {LINE_MAX}
>           Unless  otherwise  noted, the maximum length, in bytes, of a
>           utility’s input  line  (either  standard  input  or  another
>           file),  when  the  utility  is  described as processing text
>           files. The length includes room for the trailing <newline>.
>           Minimum Acceptable Value: {_POSIX2_LINE_MAX}
>
>It doesn't say anything about the trailing null byte for the buffer that
>holds it, but I assume it doesn't include it, from the context.
>
>However:
><https://pubs.opengroup.org/onlinepubs/009695399/functions/fgets.html>:
>The following sections are informative.
>EXAMPLES
>
>    Reading Input
>
>    The following example uses fgets() to read each line of input. {LINE_MAX}, which defines the maximum size of the input line, is defined in the <limits.h> header.
>
>    #include <stdio.h>
>    ...
>    char line[LINE_MAX];
>    ...
>    while (fgets(line, LINE_MAX, fp) != NULL) {
>    ...
>    }
>    ...
>
>
>This example seems to contradict my understanding of what limits.h says.
>
>So, either limits.h should be explicit that the trailing null byte is
>also included in LINE_MAX, or the example is bogus and should be fixed.
>I guess it's the latter, although I wish it was the former, so we can
>avoid a +1 in the code.
>
>In any case, could you please forward this to the Austin group?

Good find.  You aren’t the first one to find it: 
https://austingroupbugs.net/view.php?id=182 discusses that 
example a little.  The desired action written there appears 
verbatim (bar formatting) in the 4.1 draft of POSIX.1-202x.

