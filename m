Return-Path: <linux-man+bounces-4018-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EDABAEB55
	for <lists+linux-man@lfdr.de>; Wed, 01 Oct 2025 00:37:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D08C3C4C11
	for <lists+linux-man@lfdr.de>; Tue, 30 Sep 2025 22:37:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2FAB22C21FB;
	Tue, 30 Sep 2025 22:37:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=simnet.is header.i=@simnet.is header.b="QFRApRPf"
X-Original-To: linux-man@vger.kernel.org
Received: from smtp-out2-03.simnet.is (smtp-out2-03.simnet.is [194.105.232.29])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B55CE3C1F
	for <linux-man@vger.kernel.org>; Tue, 30 Sep 2025 22:37:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.105.232.29
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759271844; cv=none; b=K7zIKEyuehcJAVMJGK7KddrGpxemWSAUnzBUtbtvRHFrNLTRpNVgD2b8QoMxwPqP52kdCd1FN1R+kopFMRzJ88EUo7XMaXmac2JFHPUG5XVzFf4iDngFWoGAXWbgKFKEZ8jkZKgxO5BKzuWm+oBRI+qT3kZh8SZWJ7Ljk3h215o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759271844; c=relaxed/simple;
	bh=T52ckl2/xOnHpmArJQbcJvFB1vUY2g12DihytkfaJac=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=swKndH4oneNqoDjjHCDkbVzg38KdoRzdA+VovVfpmlswNkRHHRls9kw/XuqLXL1rhO0J9yOn9llFDZAyZdSvLlm+B6MSK8oSzkyDFifYOQbyJlN1JsXQ4eyJhgsmWtdsUtVwWNFYskhMurlODSOWnS3y3qle/KkH7zUVMNwSgn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=simnet.is; spf=pass smtp.mailfrom=simnet.is; dkim=pass (2048-bit key) header.d=simnet.is header.i=@simnet.is header.b=QFRApRPf; arc=none smtp.client-ip=194.105.232.29
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=simnet.is
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=simnet.is
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=simnet.is; i=@simnet.is; q=dns/txt; s=sel1;
  t=1759271841; x=1790807841;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=eVQkwN2MDwaMj+g8u+ZcJP9KTmyvjWKCN54ZYfA6vQo=;
  b=QFRApRPfYqyhCwIgunDExwq6BNMI527JyrF4ogki3Ud3zxRjigsvFwKq
   GOZ0lYmBKdQkxEPRXDX26mT8vzwxfM2zb+KWN1Byh9w79E4nKhuDw/VlD
   4dQdPun1mcYSdh9V6ECUL8y/wF9M0aLwbMIvXtgvYrW1p9xOR+yvXpYu8
   Rp49O9DpeTx+w/cmXslh/ouw5ZdsqmgJOVnFE/I5y2oBCshujbWzLbv38
   uTRuBjqamQwDIHb8sN9YSOTC993mWuqoceunp6iOMxEBIvOfe0g5FFzJN
   tTACmiiggPZpigqnbubLsktjfmzzzWIzUt26LWmC9LAN5D0vf5fQPW7Za
   w==;
X-CSE-ConnectionGUID: REzp0dR8Sa+7Uqq89/JTJQ==
X-CSE-MsgGUID: T7VWDzTPQ32+kFSxfOzoJA==
Authentication-Results: smtp-out-03.simnet.is; dkim=none (message not signed) header.i=none
X-SBRS: 1.9
X-IPAS-Result: =?us-ascii?q?A2HZAQD7WNxod9Viq09aHAEBAQEBAQcBARIBAQQEAQFAg?=
 =?us-ascii?q?VOCQJkQoEgBAQEPUQQBAZFPKDgTAQIEAQEBAQMCAwEBAQEBAQEBAQEBCwEBB?=
 =?us-ascii?q?gEBAQEBAQYHAhABQw47hglThmMGOj8QCw44EEYGhgi3EIE0gQHeOYFtgUmFb?=
 =?us-ascii?q?YJkAYR8hWc8BoINgUqCdT6LBwSCIoEWkDGCe4wnUngcA1ksAVUTFwsHBYEgQ?=
 =?us-ascii?q?wOBDyNLBS0dgSd3hBSEHitPghxygXRXQYNTHgZrDwaBFRlJAgICBQJDPoFrB?=
 =?us-ascii?q?hwGHxICAwECAjpXDYF4AgIEgi+BEoIvD4EhAwttPTcUG50MymiEJqFxM4NxA?=
 =?us-ascii?q?ZNgDJMNmQapQYF/gX8sBxoIMIMjURkPjnnMFoE0AgcLAQEDCZNpAQE?=
IronPort-PHdr: A9a23:feZchBZ0PQFqEy3aSBrOJyb/LTAChN3EVzX9i7I8jq5WN6O+49G6Z
 wrE5PBrgUOPXJ6Io/5Hiu+DtafmVCRA5Juaq3kNfdRKUANNksQZmQEsQYaFBET3IeSsbnk8G
 8JPPGI=
IronPort-Data: A9a23:wPf1v6AyMkhi+BVW/z/jw5YqxClBgxIJ4kV8jS/XYbTApDIj0GEPx
 2JKXD3QafyNZmKgctl1PIu080gHuMLcm9VjOVdlrnsFo1Bi8JGcXYvDRqvT04J+CuWZESqLO
 u1HMoGowPgcFyGa/lH1dOC88RGQ7InQLpLkEunIJyttcgFtTSYlmHpLlvUw6mJSqYHR7zil5
 5Wr86UzBHf/g2QpajNPs/rYwP9SlK2aVA0w7w1Wic9j5Dcyp1FNZLoDKKe4KWfPQ4U8NoaSW
 +bZwbilyXjS9hErB8nNuu6TnpoiG+O60aCm0xK6aoD66vRwjnVaPpUTaJLwXXxqZwChxLid/
 jniWauYEm/FNoWU8AgUvoIx/ytWZcWq85efSZSzXFD6I+QrvBIAzt03ZHzaM7H09c5NLHNWr
 fAieAsELU++nvvmkfWZdstV05FLwMnDZOvzu1l+zCrFSOQnRIjZRLXboIcGmikxndwIHO22i
 8gxNmspNUuZJUwffA1OU/rSn8/x7pX7WzdXgEmUoKw6/y7S12Sd1ZCzboOEI4DaHK25mG6k+
 Vz503bFOihBbp+c5wGV/FW+gc3myHaTtIU6Tubmqq812TV/3Fc7ARkGfVi2u/+0jgi5Qd03A
 0gV/Dc+6K078mS1QdTnGR61uniJulgbQdU4LgEhwB+M0baR8QecHnIDXi8EMIJgqs4tWXorz
 Tdlgu8FGxRVna+NEX6npoyd7myPIDFFfCggWQ09GF5tD8bYnKk/iRfGT9BGGaGzj8HoFTyY/
 9xshHNu71n0pZVQv5hX7Wz6bySQSo/hbzVd2+k6dnyk9R88do+gf5av+UmetagGMoeCUh+Ap
 xDoevRyDshTU/lhdwTXGY3h+Y1FAd7eaFUwZnY1QfEcG8yFoSLLQGypyGgWyL1VGsgFYyT1R
 0TYpBlc4pReVFPzMvImOd/uUptxlvK+fTgAahwyRoYXCnSWXFTWlByCmWbJhggBbWBxyPtnU
 XtlWZz1VR729piLPBLsHLlBgOByrszP7XjeQ4vyhxmn39KjiI29Fd843K+1Rrlhtsus+VyJm
 +uzwuPTmn2zpsWnM3GPqeb+7DkicRAGOHwBg5cJLrDZclQ4STlJ5j246epJRrGJVp99zo/gl
 kxRkGcBoLYjrRUr8Tm3V00=
IronPort-HdrOrdr: A9a23:aIO0eawHv0O3UgbrY8DPKrPwIb1zdoMgy1knxilNoNJuEvBws/
 re+sjztCWE7wr5N0tOpTntAse9qDbnhOdICOoqTNOftWvdyQmVxehZhOOIqVCNJ8S9zJ856U
 4KSdkcNDSfNzlHsfo=
X-Talos-CUID: 9a23:uE2Urm0GajlInICxQzHsd7xfIO03aiXR9ifrKgznNH9wGOzSa2OywfYx
X-Talos-MUID: =?us-ascii?q?9a23=3AGXs56QxEZuoYUxtzYPCUD0eBprSaqJjxNn8hg6k?=
 =?us-ascii?q?+gpLedi9eACeTqyawYKZyfw=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="6.18,305,1751241600"; 
   d="scan'208";a="66191481"
Received: from vist-zimproxy-06.vist.is ([79.171.98.213])
  by smtp-out-03.simnet.is with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Sep 2025 22:36:08 +0000
Received: from localhost (localhost [127.0.0.1])
	by vist-zimproxy-06.vist.is (Postfix) with ESMTP id 1CF8120BFA9D;
	Tue, 30 Sep 2025 22:36:08 +0000 (UTC)
Received: from vist-zimproxy-06.vist.is ([127.0.0.1])
 by localhost (vist-zimproxy-06.vist.is [127.0.0.1]) (amavis, port 10026)
 with ESMTP id 0cJB2E4tvZTE; Tue, 30 Sep 2025 22:36:08 +0000 (UTC)
Received: from kassi.invalid.is (85-220-33-163.dsl.dynamic.simnet.is [85.220.33.163])
	by vist-zimproxy-06.vist.is (Postfix) with ESMTPS id E822220B1D7F;
	Tue, 30 Sep 2025 22:36:07 +0000 (UTC)
Received: from bg by kassi.invalid.is with local (Exim 4.98.2)
	(envelope-from <bg@kassi.invalid.is>)
	id 1v3ix5-000000001j9-1DAE;
	Tue, 30 Sep 2025 22:36:07 +0000
Date: Tue, 30 Sep 2025 22:36:07 +0000
From: Bjarni Ingi Gislason <bjarniig@simnet.is>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: '^\}$' is changed to a space character
Message-ID: <aNxbV4rHn1LKPKBv@kassi.invalid.is>
References: <aNwetmt-I0cT-u93@kassi.invalid.is>
 <xvj6ylzxcbmr4wu3p73uylhb2sgyzx5egbukc4r745oosrvqc2@nka5rihouesp>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <xvj6ylzxcbmr4wu3p73uylhb2sgyzx5egbukc4r745oosrvqc2@nka5rihouesp>

  A patch is superfluous

sed -e '/^\\\}$/ {s/^/./}'

