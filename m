Return-Path: <linux-man+bounces-1328-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 139C6928C27
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:21:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B20E71F24C03
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A8AB2B9B9;
	Fri,  5 Jul 2024 16:21:31 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 629AD1E528
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:21:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.140.110.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720196491; cv=none; b=LVe0xc9MwhC4+0BQQ5CvCaft+to2Siay7x10H7p/1mJg0GC9uUf0yD8ZDGh2Z6QjXsK/L6GRWvxtOISM4pDeg5nDYT0R2egOIWQ8fRVN0+wuwtBpQXOn3ZdGklwa3PMKp08ErLDizY7OHOyL2om1SaNFuQoiW/du0OgFTORLbP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720196491; c=relaxed/simple;
	bh=GkudfKlvqE93ylJKfCsSeQrrfG/Ekx22xq6AYjsjaXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mBvp2hUCIjmxib+oHfXL52bPqaCk0OVxhMaLiaNUYqAIWzlc6119coZNm5h9DXY6LJSPZe0/8qwClH6kvjMbjb1fVVfjIsEbln2z1RiSxx72kbYzEyj8HCOYTjWgoHM8BZWKMjtBISWIuD03HPvmVowvi7Ix7MWYnXYtzgzHmys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com; spf=pass smtp.mailfrom=arm.com; arc=none smtp.client-ip=217.140.110.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=arm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=arm.com
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E65C367;
	Fri,  5 Jul 2024 09:21:53 -0700 (PDT)
Received: from [10.2.78.57] (e120077-lin.cambridge.arm.com [10.2.78.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D47393F766;
	Fri,  5 Jul 2024 09:21:26 -0700 (PDT)
Message-ID: <2426aec9-e8a8-4823-b140-888da6c2240a@arm.com>
Date: Fri, 5 Jul 2024 17:21:25 +0100
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
To: Jonathan Wakely <jwakely.gcc@gmail.com>,
 Alejandro Colomar <alx@kernel.org>
Cc: Martin Uecker <muecker@gwdg.de>, Xi Ruoyao <xry111@xry111.site>,
 Jakub Jelinek <jakub@redhat.com>, libc-alpha@sourceware.org,
 gcc@gcc.gnu.org, Paul Eggert <eggert@cs.ucla.edu>, linux-man@vger.kernel.org
References: <20240705130249.14116-2-alx@kernel.org>
 <38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
 <wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
 <08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
 <f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
 <b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
 <inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
 <CAH6eHdTqVjaUERRpA+m-ikFmuYPSzQTm+aaa_f__duVht+74pQ@mail.gmail.com>
From: "Richard Earnshaw (lists)" <Richard.Earnshaw@arm.com>
Content-Language: en-GB
In-Reply-To: <CAH6eHdTqVjaUERRpA+m-ikFmuYPSzQTm+aaa_f__duVht+74pQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/07/2024 17:11, Jonathan Wakely via Gcc wrote:
> On Fri, 5 Jul 2024 at 16:54, Alejandro Colomar via Gcc <gcc@gcc.gnu.org> wrote:
>> At least, I hope there's consensus that while current GCC doesn't warn
>> about this, ideally it should, which means it should warn for valid uses
>> of strtol(3), which means strtol(3) should be fixed, in all of ISO,
>> POSIX, and glibc.
> 
> I'm not convinced. It doesn't look like anybody else is convinced. I
> wouldn't call that consensus.

And what's more this prototype is defined by the C standard.  If you have a beef with that, then you should take it up with the committee; I can't see GCC wanting to be different on this.

R.

