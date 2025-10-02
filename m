Return-Path: <linux-man+bounces-4035-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 84546BB583B
	for <lists+linux-man@lfdr.de>; Thu, 02 Oct 2025 23:58:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 0B47434290B
	for <lists+linux-man@lfdr.de>; Thu,  2 Oct 2025 21:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17CF81DE3B5;
	Thu,  2 Oct 2025 21:57:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=simnet.is header.i=@simnet.is header.b="dx+fOsrd"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2-03.simnet.is (smtp-out2-03.simnet.is [194.105.232.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C50C148
	for <linux-man@vger.kernel.org>; Thu,  2 Oct 2025 21:57:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.105.232.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759442277; cv=none; b=SoC5JysF6ZHZY6dfXUlVVfjjhAVCq/LMtyVY8xYdyewgzi6EkGv9Er4mCHIsuga3pQAmMtAEcaY9KB2LTeQ31QTNNMRbIylrEiJyKf0LrHDhKWsGBoWJIrw+TQkLYsBjhAGtjmkbVuDA7QUDg558awZ/Hxmv84h2+dT35eCBHYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759442277; c=relaxed/simple;
	bh=kt5es8E4bNVYW6162vEWGIjqhhrRMHRJxmo62zDCyrU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VkM0+V6EdtZXThKw61ABHCFKisSrh1l0R7f+l6gNxLvuC18WJWr6kgL2no0HOOYM2u8EdZs5uD55HKCceZ/oVxDvy//gVIMK02evePyzhB3PetziXyf/w9sF49j4l+hJypmR4SqIuvjO0l7g3WBv5Cz/c8OnDTgkLBwe8mPB180=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=simnet.is; spf=pass smtp.mailfrom=simnet.is; dkim=pass (2048-bit key) header.d=simnet.is header.i=@simnet.is header.b=dx+fOsrd; arc=none smtp.client-ip=194.105.232.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=simnet.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=simnet.is
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=simnet.is; i=@simnet.is; q=dns/txt; s=sel1;
  t=1759442274; x=1790978274;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=jiiBypFxNovgC0O0+v6/Z9vy2+Q+C1El0Nbk1CSySuI=;
  b=dx+fOsrdAbqRBPqnVD6hXoEowjRpzCllZ7TfoczLivziiYcmCZ67vAYk
   LMFpuUh+5bqF7PLLJ7K9JsT+mZ28UEdZ7rThbvgw0+aRaJAHaFxKz6/C4
   wQlZPHFy5hWx0pA7Eec3vDPyYdEp4RgxwqAqpAJskghcAd7T1jPHSTZZS
   yN1QQyYPQXi42Aqz5G3BHNEbAkv3pnyRHzkW96aMZJbZqSWd15Y+vUAmt
   lWGog+CkRpqbpSpWldAaoBoGRa9JKujmIhgjmIiiIrCqCHs7K1k6WVCdH
   yUGy96vDRmPK3/QXQHWJ0n2QJpQqsybZ3ooR+aIpgVhXCR0bTxQxrD6GG
   g==;
X-CSE-ConnectionGUID: 3J6Zh52eRueQIfi1+7OpLQ==
X-CSE-MsgGUID: aMKqrKVhT1asMWgyMuUBJA==
Authentication-Results: smtp-out-03.simnet.is; dkim=none (message not signed) header.i=none
X-SBRS: 1.9
X-IPAS-Result: =?us-ascii?q?A2EPBgBV7t5od9Niq09aHAEBAQEBAQcBARIBAQQEAQFAg?=
 =?us-ascii?q?VMCgj6BAoFHHogkjgUgaAWfOwEBAQ83GgQBAQMBA5FJKDgTAQIEAQEBAQMCA?=
 =?us-ascii?q?wEBAQEBAQEBAQEBCwEBBgEBAQEBAQYHAhABQw47hglGDUkBEAGCO4IWLA1+A?=
 =?us-ascii?q?QMCOj8QCw4KLhBGBoMWgnILsE2BNIEBgxzbHYFtgUmFbYJkAYpjPAaCDYFKg?=
 =?us-ascii?q?nU+gmEDXYdGBIIigRaQMYJ6jFZSeBwDWSwBVRMXCwcFgSBDA4EPI0sFLR2BJ?=
 =?us-ascii?q?3eEFIQeK0+CHHKBdFdBg1MeBmsPBoEVGUkCAgIFAkM+gWoGHAYfEgIDAQICO?=
 =?us-ascii?q?lcNgXgCAgSCL4ESgioPgW8DC209NxQbmWuDSTGBCFmCH8Y3hCaMHpVTM4Nxg?=
 =?us-ascii?q?WqRdwyTDZkGjgiHXZNcgX+BfywHGggwgyIJSRkPji0WNog7vgB4PAIHCwEBA?=
 =?us-ascii?q?wmLIohHAQE?=
IronPort-PHdr: A9a23:5Xw2cB9CjfgdqP9uWA7oyV9kXcBGk67xIhZQ7Yc7zuoVNL+i+pLvI
 Are/qYlgFzIWNDd7PRJw6rTvrv7UGMNqZCGrDgZcZNKWhNEwcUblgAtGoiEXEv8KvOCUg==
IronPort-Data: A9a23:xUJieqxIxHzs8xce+O96t+cUxirEfRIJ4+MujC+fZmUNrF6WrkVTn
 TMWUTyPPq6Namb3eYhyPI+y9UwFv8TVm9JqGldqqFhgHilAwSbnLY3Cdx+vZUt+DSFioGZPt
 Zh2hgzodZhsJpPkjk7zdOCn9T8kiP3gqoPUUIbsIjp2SRJvVBAvgBdin/9RqoNziLBVOSvU0
 T/Ji5OZYQ/NNwJcaDpOtvvb8Ek355wehRtB1rAATaEa1LPhvyF94KI3fcmZM3b+S49IKe+2L
 86r5K255G7Q4yA2AdqjlLvhGmVSKlIFFVHT4pb+c/HKbilq/kTe4I5iXBYvQRs/ZwGyojxE4
 I4lWapc5useFvakdOw1C3G0GszlVEFM0OevzXOX6aR/w6BaGpdFLjoH4EweZOUlFuhL7W5mr
 t5GGjBQNB25mu+P4by6E6ozodwHFZy+VG8fkikIITDxE/c9XdXRQqDS/9hIzXJo2oZQHO3CI
 csCAdZtREuRJUQQYxFGWNRkxb7AanrXKlW0rHqfqoIs4m3VwRA30aOF3N/9JILXGJwPxB3wS
 mTu9kHaGws5CtyjkDOe102jl8rSoAnZcddHfFG/3qQx3gHCmTV75ActfVGhqP+1h0iWV99VK
 kUSvC00osAa/Ui7ZtrwRRu1pDiDpBF0c95RFfAqrQSEzILK7AuDQGsJVDhMbJohrsBeeNAx/
 kGIhM+sFz1qqKeSWWPYruvSszKpJW4UNgfueBPoUyNewYfRoNxpgyjSQ+9CHq/szYLSARXJl
 mXiQDcFu50fissC1qOe9F/Bgi6xqpWhcuLTzl6JNo5CxlgiDLNJd7CVBU7nAeFoDb3xc7Vsl
 GYFgNTb/uELFYuKhD3IGLlLArCy+7CEK1UwYGKD/bF8qlxBGFb5JOi8BQ2Swm8zba7onhezP
 yfuVft5vsM7AZdTRfYfj3iNI8or17P8Mt/uS+rZaNFDCrAoK1LWoHs/NBDNgjy2+KTJrU3ZE
 cvCGSpLJS1LYZmLMBLvH4/xLJd2n3pmrY8tbcqikXxLLoZylFbPEulZYQTXBgzIxLiJph7cu
 9tfOaO3J+Z3DIXDjt3s2ddLdzgidCFnba0aXuQOJ4Zv1CI/STl5U5c8ANoJJ+RYokiivrmSr
 inmBx8BlTISRxTvcG23V5yqU5u3Nb4XkJ7xFXVE0YqAs5T7XbuS0Q==
IronPort-HdrOrdr: A9a23:dZ65b6OwQpDCMcBcTsyjsMiBIKoaSvp037Dk7SBMoDhuA6qlfq
 GV7ZMmPHDP5wr5NEtPpTnEAtj4fZq+z+8Q3WByB8bBYOCOggLBR+sOgbcKgQeQfhEWndQttp
 uIHZIeNOHN
X-Talos-CUID: 9a23:mn1VAWOiIAuYn+5DAws5xk5JQM0fb3Dk7XnRegznLn5NcejA
X-Talos-MUID: 9a23:ch0CBwT0rt3YdZ5BRXTloRJ7LuRW45j3AVsorpoXntS5Hw5ZbmI=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.18,310,1751241600"; 
   d="scan'208";a="66551223"
Received: from vist-zimproxy-04.vist.is ([79.171.98.211])
  by smtp-out-03.simnet.is with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Oct 2025 21:57:45 +0000
Received: from localhost (localhost [127.0.0.1])
	by vist-zimproxy-04.vist.is (Postfix) with ESMTP id 6438660B1F98;
	Thu,  2 Oct 2025 21:57:45 +0000 (UTC)
Received: from vist-zimproxy-04.vist.is ([127.0.0.1])
 by localhost (vist-zimproxy-04.vist.is [127.0.0.1]) (amavis, port 10026)
 with ESMTP id lQMZ1MxAAUAv; Thu,  2 Oct 2025 21:57:45 +0000 (UTC)
Received: from kassi.invalid.is (85-220-33-163.dsl.dynamic.simnet.is [85.220.33.163])
	by vist-zimproxy-04.vist.is (Postfix) with ESMTPS id 2E88B60B1F96;
	Thu,  2 Oct 2025 21:57:45 +0000 (UTC)
Received: from bg by kassi.invalid.is with local (Exim 4.98.2)
	(envelope-from <bg@kassi.invalid.is>)
	id 1v4RJ2-000000000rY-1wdO;
	Thu, 02 Oct 2025 21:57:44 +0000
Date: Thu, 2 Oct 2025 21:57:44 +0000
From: Bjarni Ingi Gislason <bjarniig@simnet.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org, branden@debian.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <aN71WBBvfKMQjD4s@kassi.invalid.is>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <xvj6ylzxcbmr4wu3p73uylhb2sgyzx5egbukc4r745oosrvqc2@nka5rihouesp>
 <aNxbV4rHn1LKPKBv@kassi.invalid.is>
 <32j4rxtwivo2jafhq7fmtz4rk4kyhmv4ldzoq64757ercbiwxb@zfgmna4wiuvs>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <32j4rxtwivo2jafhq7fmtz4rk4kyhmv4ldzoq64757ercbiwxb@zfgmna4wiuvs>

On Wed, Oct 01, 2025 at 08:49:38AM +0200, Alejandro Colomar wrote:
> Hi Bjarni.
> 
> On Tue, Sep 30, 2025 at 10:36:07PM +0000, Bjarni Ingi Gislason wrote:
> >   A patch is superfluous
> > 
> > sed -e '/^\\\}$/ {s/^/./}'
> 
> This would also work; thanks!  After all, what I need is something I can
> run to get the page changed.
> 
> On the other hand, I think I prefer Branden's approach, which entirely
> eliminates the low-level roff(7) there.  What do you think?
> 
> 
  I did not get a copy of Branden's e-mail.

  I suggest to get your own knowledge of the troff language,

http://troff.org/54.pdf

so that you are not addicted to the opinions of others.

