Return-Path: <linux-man+bounces-895-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 867D38C0A3A
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 05:41:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2D6801F229BB
	for <lists+linux-man@lfdr.de>; Thu,  9 May 2024 03:41:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493B0146D73;
	Thu,  9 May 2024 03:41:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b="gLFqLeuC"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.cs.ucla.edu (mail.cs.ucla.edu [131.179.128.66])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC007D26D
	for <linux-man@vger.kernel.org>; Thu,  9 May 2024 03:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=131.179.128.66
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715226103; cv=none; b=E+QAG9+w6jg3PAmq2j0JKFpRZjuqUkrpguP+3fefSfW3l3ktiZnkescB6rcG4Mkml4Sn8sLtcKyDG+UtK/mtYP/NM98vZTIMTzTPtQte2QZwr9sPhsCvefQZ7EmzvEvbqLwz0JWOHWbOv2bCXQcgg14oBvCVRFud2/EVQaa3NK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715226103; c=relaxed/simple;
	bh=FkKPTrwnW8yVaNHYz7o5nyTWKwr0cH8KNfPkXugTZyM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pxy0HTH96gN72HMiQoEaBjPQ0kEpj/GxU6kav+Zvvi8CFj2DEgZZqc0rto7O1stmlu68fAZYEUx52JOCmK+K2jnv7Sbk8ScYOKmVUua7ensBKmKARba1fA32cFWYX5Ylp/X7Cj+yi9OFjZg6GKARmHe1NAOyu0A0UuaySHhj+GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu; spf=pass smtp.mailfrom=cs.ucla.edu; dkim=pass (2048-bit key) header.d=cs.ucla.edu header.i=@cs.ucla.edu header.b=gLFqLeuC; arc=none smtp.client-ip=131.179.128.66
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=cs.ucla.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cs.ucla.edu
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id 16DBF3C00FAB8;
	Wed,  8 May 2024 20:41:41 -0700 (PDT)
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10032) with ESMTP
 id PaWEjhs4AZKV; Wed,  8 May 2024 20:41:40 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mail.cs.ucla.edu (Postfix) with ESMTP id BA1DE3C00E400;
	Wed,  8 May 2024 20:41:40 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.10.3 mail.cs.ucla.edu BA1DE3C00E400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cs.ucla.edu;
	s=9D0B346E-2AEB-11ED-9476-E14B719DCE6C; t=1715226100;
	bh=FkKPTrwnW8yVaNHYz7o5nyTWKwr0cH8KNfPkXugTZyM=;
	h=Message-ID:Date:MIME-Version:To:From;
	b=gLFqLeuCdpSDlgVRyRGv8C8htr0yrSL9825/h9MfdgQV5tHQTZVyngPH6/2F2xghq
	 EjaPuOlvcQ3fbIN1icLpmO9sYxJtzpg4DVM+Mv5F5KGBhRB1Q10kFXU4ajOJBEmmkr
	 O2SQQ79llORN9w3lY2joTckGWJMDdcR60TanVSmrGmdJaimYU+Wi2xAovNuI8pYZXf
	 497rU5+njq6+Sco99KQ0o8W4Uok/CdlzjwAcHxhJ96lRKE0I5QyKLjQUXpPkv1BpiN
	 5zHYS0uXfL/Kqtkj+s415rpEhwf/d2JVsHdBtCa0opAf8hsnMzvGD4YsYgIzby9Gte
	 8EiNGyHRUhKcw==
X-Virus-Scanned: amavis at mail.cs.ucla.edu
Received: from mail.cs.ucla.edu ([127.0.0.1])
 by localhost (mail.cs.ucla.edu [127.0.0.1]) (amavis, port 10026) with ESMTP
 id EN-pjXDCZEBm; Wed,  8 May 2024 20:41:40 -0700 (PDT)
Received: from [192.168.254.12] (unknown [47.154.17.165])
	by mail.cs.ucla.edu (Postfix) with ESMTPSA id 9AF243C00FAB8;
	Wed,  8 May 2024 20:41:40 -0700 (PDT)
Message-ID: <1305b78e-dbfb-439f-aa83-c75d3340873d@cs.ucla.edu>
Date: Wed, 8 May 2024 20:41:40 -0700
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [tz] manual pages in tzdb
To: Philip Paeps <philip@trouble.is>
Cc: Alejandro Colomar <alx@kernel.org>, tz@iana.org, linux-man@vger.kernel.org
References: <vexmpmalky6xddplkpr6md6b7r664gmyt3fthmmiuxnwwiw3fu@55ga4tnb5zuj>
 <b0faabc0-6dcb-4540-b392-56c244b53817@cs.ucla.edu>
 <43C8257A-38BB-49CC-98C1-E5F59867BAAE@trouble.is>
Content-Language: en-US
From: Paul Eggert <eggert@cs.ucla.edu>
Organization: UCLA Computer Science Department
In-Reply-To: <43C8257A-38BB-49CC-98C1-E5F59867BAAE@trouble.is>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2024-05-08 20:36, Philip Paeps wrote:
> Thinking out loud: would it make sense to rename the files in the Git=20
> repository, but keep the tarballs flat?=C2=A0 I suspect most downstream=
s=20
> consume the tarballs rather than the Git repository.

You may be right. My impression is that some people do it either way.=20
There would be some pain in the long run if the two methods put files in=20
different places.

We could arrange for the tarballs to contain two hard links or copies of=20
the renamed files, one with the old name and one with the new.

All in all, though, I'm inclined to think that if we're going to rename=20
the files, we should just do it. The backward compatibility concerns are=20
less with documentation location than with data or code.

