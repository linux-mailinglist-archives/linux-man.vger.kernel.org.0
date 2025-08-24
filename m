Return-Path: <linux-man+bounces-3546-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CE0DB33076
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:48:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38E01441D8F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DF3E244663;
	Sun, 24 Aug 2025 14:48:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="RMj+Ns13"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6E414EC46
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046916; cv=none; b=SQazQpgTOMCo2StMneqmXy84t09HmY38FctEfAbGt0SHcD0hlKa3GpFGQ5o6ezKKNMPsJfrs7gcELGenerQzrGQqLeM9TX4Og1KqXNX4fOBpJwZ7Xcb0QL4nBw2WjNPsUvcH+XvLp+JeNcnaO8RJRD56oHLnWFwj0hCvydWNJ7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046916; c=relaxed/simple;
	bh=AvbZt6ivGuIEdamIRNfHsK6f5kLR7xc3YfK9VOrYFfs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=IANWhtgGhLhC6vxNNAC9X1gxcxnSquknnfKF7wqMZVuuIqG2oaK3OakggJ9P0qIGwcYcsHvWa9lwjlfMktjdZBCnzE9JfFjhoOyZzo2FvekpOa4e86gBAXT/MATCE8Tu7CW2tELkeS0eK7qDLbB/syTo1VEaoRhQXmyPHR1DyzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=RMj+Ns13; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046912;
	bh=MBlb3eAMe75DcM//W/b0n9re0YuYRcHfWr1QDmXrfPo=;
	h=Date:From:To:Cc:Subject;
	b=RMj+Ns13Tby+eIoYIX0TB4KZzXeYfz2IwPGdYBiYyrnYClPI7kHgwIZkmfPCa1Guv
	 1MeRVUf0eGiRhY85S50PBYp617tuuxiHvE2qjtBtdJuSYoV6JagsjRD34TWAz0HMyA
	 rlHzDO78Uz2Nj3vEPRNJpSR1dCF2ecmm1MZ4u0o14pBq0LrmXRIWe216t6SpWrmn1K
	 PZ6P5qpTIvXHs8EWc2cAKVbGnbyNWvw8qQqki+zjYAX0CO4AwwJPyjCsaJSt4d2btm
	 pUTjW5jO44SVt2sByENA5uWqONLdzPU3bvspQCuuK9ArLbrRvUmBQLelrYmy8OJRvM
	 cTcriI8vgw0kA==
Original-Subject: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002047C.0000000068AB2640.00138B3B; Sun, 24 Aug 2025 14:48:32 +0000
Date: Sun, 24 Aug 2025 14:48:32 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page resolver.3
Message-ID: <aKsmQEjrXrFxDhDk@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    B<…>int length → B<…int> I<length>

"B<int dn_comp(>int length;\n"
"B<           const char *>I<exp_dn>B<, unsigned char >I<comp_dn>B<[>I<length>B<],>\n"
"B<           int >I<length>B<, unsigned char **>I<dnptrs>B<,>\n"
"B<           unsigned char **>I<lastdnptr>B<);>\n"

"B<int dn_expand(>int length;\n"
"B<           const unsigned char *>I<msg>B<,>\n"
"B<           const unsigned char *>I<eomorig>B<,>\n"
"B<           const unsigned char *>I<comp_dn>B<, char >I<exp_dn>B<[>I<length>B<],>\n"
"B<           int >I<length>B<);>\n"

