Return-Path: <linux-man+bounces-893-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D55D8C0286
	for <lists+linux-man@lfdr.de>; Wed,  8 May 2024 19:03:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B80541F22E68
	for <lists+linux-man@lfdr.de>; Wed,  8 May 2024 17:03:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3896200DD;
	Wed,  8 May 2024 17:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="rUMwiUc3"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0910A25
	for <linux-man@vger.kernel.org>; Wed,  8 May 2024 17:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715187823; cv=none; b=niW0n72wGrepA0Mao8f+b0fEWw4epze1p8BtL8Gg+HgBZXfPi2V2l9qtOuQNGEyKz0TcnHV/JGQxab5pZXXeZvD86d0V8dxCTvaO9S29yQ6GVjcc6suH4ao8SHi+q0BSFhL4eMl2UnN+IEPfEuHSQ2zFeo/gqVGsB54U386VMnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715187823; c=relaxed/simple;
	bh=dauysLvRxlMlJVSzPdFcdAh3J5vw8Qxva2IfRvz8ZTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b6MfULK5aOb6MkTJsqhyRVbc2TqRUMPDdcA4+Bp6nN5OfjB+6XQdlNZdFynLHufys0w6fPzixWiey96Er1+PZ8bsUEXqUYuhGaBEynZMI/Rpf1+9YhhI3XG52uMHueTmEfluSE0cC9+MmZY8sEd9U6RuSbs1Y/MtW7wONF+iG6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=rUMwiUc3; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 3138B3C0140A0;
	Wed,  8 May 2024 09:57:39 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id 7mLOBfd89p0u; Wed,  8 May 2024 09:57:39 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id DC6113C0140A4;
	Wed,  8 May 2024 09:57:38 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu DC6113C0140A4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1715187458;
	bh=+RV3SyxkrbyvlJsb/JOtS/FFXE2mgwHHJxwCb4oRvPo=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=rUMwiUc3FkOoJN7VcrSLvQNqcvNkRu8AAX0lBo9A3kPhvy8CD0O1ZWvtLnIKo8/Rc
	 5AlCCo+RVcsYl65ApxzbkMWfdL+igUqZbOK0oMu9FrR66oe+E3KY6m3+BziKBwciOU
	 hnDQxOuP1d9AMjbjpFgjUIOxKXqO9dwAe0jrwBDwavSru5NDFwK8a1FQalOzAF+AGS
	 tx1mYqr+pvWATe2MHrneD+ngPxk+2dDgvqUsLoG6IH1BcIxInZld4tHhTnefVbO06w
	 TIPbTs5jxtaci13zjAFeJrsXg2N84hKvmdjOgiwf6J5PWYZSPWtKjEIvIWdmLL+ibW
	 bemwm4Vozq9sA==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id iIQJ7YaBwMLT; Wed,  8 May 2024 09:57:38 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id BB44B3C0140A0;
	Wed,  8 May 2024 09:57:38 -0700 (PDT)
Message-ID: <b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
Date: Wed, 8 May 2024 09:57:38 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: manual pages in tzdb
To: Alejandro Colomar <alx@kernel.org>, tz@iana.org
Cc: linux-man@vger.kernel.org
References: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2024-05-08 09:24, Alejandro Colomar wrote:
> What do you think of moving the pages in the tzdb repository into
> man/man*/ directories?  I see your repository is perfectly flat, so I
> don't know if there are strong reasons for that, or if it's just
> innertia.

To be fair, inertia itself is a strong reason....

I wouldn't mind renaming the man pages, though I'd get rid of the "new" 
prefixes while we're at it. However, I worry that other downstream users 
would be adversely affected. Perhaps others could chime in.

