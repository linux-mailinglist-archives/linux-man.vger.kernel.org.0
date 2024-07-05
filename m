Return-Path: <linux-man+bounces-1331-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 74CDF928C56
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 18:32:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E3AD4B2194F
	for <lists+linux-man@lfdr.de>; Fri,  5 Jul 2024 16:32:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58D1C2BB10;
	Fri,  5 Jul 2024 16:32:24 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from smtp.gentoo.org (woodpecker.gentoo.org [140.211.166.183])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21922F32
	for <linux-man@vger.kernel.org>; Fri,  5 Jul 2024 16:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=140.211.166.183
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720197144; cv=none; b=oowkEZseW92Y/6Z+VXl6F2sz6/PstKBoM+JEYrWIrC1ya/CLZvon4Aiqhcd6gO5TGa5EsV1BrlJcycasc9LdZxj8HNpyG6Le9rjlli+Ilsd29DQJJqbbJxc6KxF0LJbgpEBhJvakfOpFL7WyKnW/9TTBFTO0SqxEk/5cHkkNUXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720197144; c=relaxed/simple;
	bh=mcbhW/bQesNwO+ga/OFvwY4t1KYujGOGY9qvwCh4dGU=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=MiJr+7XQf0B5UP71z1Mi/6VIpReNdWii1junsqawuzNVAOiJAJmxrWvJjRifWrnjlOBlWYBOcVeNmNMHbqd5kLxpC1JXqyeRO4ZJFX4KsBIguvN0kC9PVhA8Hks3+N5LlI+zB5Fd85bUoUr34sZMePvz/g0KCfhjxs+yXZ9dlP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org; spf=pass smtp.mailfrom=gentoo.org; arc=none smtp.client-ip=140.211.166.183
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gentoo.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gentoo.org
From: Sam James <sam@gentoo.org>
To: Jonathan Wakely via Gcc <gcc@gcc.gnu.org>
Cc: Xi Ruoyao <xry111@xry111.site>,  Jonathan Wakely
 <jwakely.gcc@gmail.com>,  Alejandro Colomar <alx@kernel.org>,  Martin
 Uecker <muecker@gwdg.de>,  Jakub Jelinek <jakub@redhat.com>,
  libc-alpha@sourceware.org,  Paul Eggert <eggert@cs.ucla.edu>,
  linux-man@vger.kernel.org
Subject: Re: [PATCH v1] Remove 'restrict' from 'nptr' in strtol(3)-like
 functions
In-Reply-To: <CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
	(Jonathan Wakely via Gcc's message of "Fri, 5 Jul 2024 17:24:41
	+0100")
Organization: Gentoo
References: <20240705130249.14116-2-alx@kernel.org>
	<38982a470643f766747b0ca06b27ca859a87b101.camel@xry111.site>
	<wadzblkwslmjyypxjij4mvt2hy6zihncox5l3mh23vwd7lhmkh@vosxxdjdd53k>
	<08bc01290aca2408f69a6df2088eed7697968e90.camel@gwdg.de>
	<f3oswcupvsnxglwzp2h3pdc7k6ibuwzfhxl4zarqclwqzenn3h@jaj3ksd4foeg>
	<b1888e9f069950be010f7d87d4a8ae6ed64b69b0.camel@gwdg.de>
	<inr67omtoxegfmjxrj24h5fuvgthv2b7yr4v5kv2dq5oaterpl@h6clysw4s4w5>
	<d99c2f8230eec6b7244b62ca612ee949466f62aa.camel@xry111.site>
	<CAH6eHdT0NWVEAZ8ZwCc0WCR6RE5-pGJCGKatWyAb9chDZhWjGw@mail.gmail.com>
Date: Fri, 05 Jul 2024 17:32:16 +0100
Message-ID: <87jzhz241b.fsf@gentoo.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Jonathan Wakely via Gcc <gcc@gcc.gnu.org> writes:

> On Fri, 5 Jul 2024 at 17:02, Xi Ruoyao via Gcc <gcc@gcc.gnu.org> wrote:
>>
>> On Fri, 2024-07-05 at 17:53 +0200, Alejandro Colomar wrote:
>> > At least, I hope there's consensus that while current GCC doesn't warn
>> > about this, ideally it should, which means it should warn for valid uses
>> > of strtol(3), which means strtol(3) should be fixed, in all of ISO,
>> > POSIX, and glibc.
>>
>> It **shouldn't**.  strtol will only violate restrict if it's wrongly
>> implemented, or something dumb is done like "strtol((const char*) &p,
>> &p, 0)".
>>
>> See my previous reply.
>
> Right, is there a valid use of strtol where a warning would be justified?
>
> Showing that you can contrive a case where a const char* restrict and
> char** restrict can alias doesn't mean there's a problem with strtol.

I still don't understand why it'd be appropriate for GCC and glibc to
override this without it even being *brought to* the committee, either.

