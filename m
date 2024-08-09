Return-Path: <linux-man+bounces-1604-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CE5E94CED5
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 12:41:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 00865282357
	for <lists+linux-man@lfdr.de>; Fri,  9 Aug 2024 10:41:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE7C1922DB;
	Fri,  9 Aug 2024 10:41:05 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from joooj.vinc17.net (joooj.vinc17.net [155.133.131.76])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D8415ECE2
	for <linux-man@vger.kernel.org>; Fri,  9 Aug 2024 10:41:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=155.133.131.76
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723200065; cv=none; b=iSXgrPYQuu+MIv5eh6yB0NC4jQRiidXfJWh1MI31El4oU2Ll18ht7qInIf6Tq1euy8p4a+NT9ckHb+zKyxVAU2CNbWEhcwtKQdlnG1Kryq34HZUs9s1VLeGxbLY6Wj3GJPMgAYkiQcahE1HNYKWa741/PEBwbQ8KU36J25tznBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723200065; c=relaxed/simple;
	bh=7dhY7zvFOREeekiCaXzd9EjEAoZJKNhbGC+YwXHvLlA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fpGNpHwlIjq4WuhEmg8O1DtR/yJ5/lZvk7gcJCozeUtO1tCFv5jWQaskhT8J6BLt25B+Pfu3rVjS7+AR8yS2ppxk66gSaaNr89MX8/gcMLDhOmkEbXUjGdkgTOpQfE+IdEngbEqDGg6iEOC/q8T4ZVWp10Nk6eDpeE+FKQDiLLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net; spf=pass smtp.mailfrom=vinc17.net; arc=none smtp.client-ip=155.133.131.76
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=vinc17.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=vinc17.net
Received: from smtp-qaa.vinc17.net (2a02-8428-1b1d-4d01-96a9-491d-7b48-ba31.rev.sfr.net [IPv6:2a02:8428:1b1d:4d01:96a9:491d:7b48:ba31])
	by joooj.vinc17.net (Postfix) with ESMTPSA id 9D42F3D6;
	Fri,  9 Aug 2024 12:41:01 +0200 (CEST)
Received: by qaa.vinc17.org (Postfix, from userid 1000)
	id 498E6CA00FF; Fri, 09 Aug 2024 12:41:01 +0200 (CEST)
Date: Fri, 9 Aug 2024 12:41:01 +0200
From: Vincent Lefevre <vincent@vinc17.net>
To: John Gardner <gardnerjohng@gmail.com>
Cc: Dave Kemper <saint.snit@gmail.com>, linux-man@vger.kernel.org,
	groff@gnu.org
Subject: Re: [PATCH] nextup.3: minor improvements
Message-ID: <20240809104101.GD4789@qaa.vinc17.org>
References: <20240807105617.GH3221@qaa.vinc17.org>
 <oa5aca4pqtnnwjopngqkouwueglyujmusnms535mgh4ipyawbk@4wonm4ymhcdv>
 <20240808025636.GE3086@qaa.vinc17.org>
 <wpkh52aryrsgp52qur6igf5uwidbhetszb4krfcfgfpyarv7yg@abea5srk4kuy>
 <20240808121603.fatotzqmtpbf2jez@illithid>
 <20240808125838.GD2669@cventin.lip.ens-lyon.fr>
 <CACRhBXPyVNN8q9pbeZSzSFj-nB1woJLWhTGw8N8yuBpJRyY6CQ@mail.gmail.com>
 <CAGcdaje1Fo_DuFf87ST8rrNCHmXx8uEzjJCwHiZ2Wf47h_O0Pg@mail.gmail.com>
 <20240809092514.GB4789@qaa.vinc17.org>
 <CAGcdajc55V7D0H2WiX5xEBcVg+mydTrvhXCKEXDpmWHZ75uj5w@mail.gmail.com>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAGcdajc55V7D0H2WiX5xEBcVg+mydTrvhXCKEXDpmWHZ75uj5w@mail.gmail.com>
X-Mailer-Info: https://www.vinc17.net/mutt/
User-Agent: Mutt/2.2.13+77 (9dc98409) vl-169878 (2024-06-20)

On 2024-08-09 19:38:48 +1000, John Gardner wrote:
> Hi Vincent,
> 
> > I really see a "+" underlined
> 
> Is it visually distinct from an ordinary underscore? I merely ask now out
> of curiosity, as Brandan explained why overstriking is a no-go.

The underline bar is slightly different from an underscore, but
this is not the issue. What matters is that the underlined "+"
is very different from the ± character: in this ± character,
the "+" part and the "-" part have the same width, but in the
underlined "+", the underline bar is larger than the "+";
moreover, the underline bar is below the baseline.

-- 
Vincent Lefèvre <vincent@vinc17.net> - Web: <https://www.vinc17.net/>
100% accessible validated (X)HTML - Blog: <https://www.vinc17.net/blog/>
Work: CR INRIA - computer arithmetic / AriC project (LIP, ENS-Lyon)

