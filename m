Return-Path: <linux-man+bounces-1920-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DF69CDA66
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 09:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C129A1F22C0B
	for <lists+linux-man@lfdr.de>; Fri, 15 Nov 2024 08:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A1BE16EB4C;
	Fri, 15 Nov 2024 08:23:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b="MBHdt3AB"
X-Original-To: linux-man@vger.kernel.org
Received: from eggs.gnu.org (eggs.gnu.org [209.51.188.92])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F5842AA3
	for <linux-man@vger.kernel.org>; Fri, 15 Nov 2024 08:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.51.188.92
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731658989; cv=none; b=YEYjt4BDpFr9WlUfZpQ58t21Nby+inSP0Df67ZDB1sqALcZ+OySnFTtV29KBpClXRkjgOum604kd9JK8k6//XAefw96yGG7KM7FLOwDDxxitgCtLa7UMu3GELSfeDEH0PqJ4/4I9dT5GrXrHupAOk+zKrdheB+MWE4Mfb7drEYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731658989; c=relaxed/simple;
	bh=JochugYohaMVR8SQBPSvgX0vySCdhOOh7uV9IO/gAuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lhFjzOrF+0p3tmm+oVXveqNzotqnYVNOHoOzleVwE5dhKaPGYpS46SSvBF+k2XzequhDIW4A1LSBtMEm3fP3q2Hg+coZKh5EZBortFe9J4optb43PQMyKjFqdBDyk4fO8YUn1TL8G+JVMCdS8omaN0grEbqHh+7eLc3bCPx4b0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org; spf=pass smtp.mailfrom=gnu.org; dkim=pass (2048-bit key) header.d=gnu.org header.i=@gnu.org header.b=MBHdt3AB; arc=none smtp.client-ip=209.51.188.92
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gnu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gnu.org
Received: from fencepost.gnu.org ([2001:470:142:3::e])
	by eggs.gnu.org with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.90_1)
	(envelope-from <ken@gnu.org>)
	id 1tBrbf-0000qy-3J; Fri, 15 Nov 2024 03:23:07 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=gnu.org;
	s=fencepost-gnu-org; h=In-Reply-To:MIME-Version:References:Subject:To:From:
	Date; bh=LbN3ToVETt5tYG8pBsRObe7TpkZYbf8Kbn5Pil9S6lA=; b=MBHdt3ABuX5j7aL/ALIJ
	l8VP3uVnr92oahH6GNy4ZzCvsOai/eHKf94ARzTQM5sp3Iu6RrOJB+0IliHaSRQ6nkulbv6HaLEdH
	88EHDP0eLqrJJv2aCiOZlX831x4hqMqC4Fu2N9mlIQgbAny9MIlOuuOKdygn5XD7ZhjEnNIn1t1DP
	37+O5P10heLb+1lZMHmBQ4AICHGUcPVckNrZkLg0xzyIsMXXTnrfXj1QMzMgPjVqu4nkK4ePXd6GW
	/7bwE1D5gTNcvRKewXECuXlUI0kNfTxKOfmC5pmpEka9egeICNlQR9v26wrmS+t9r0SPPYzm6+eZX
	3oms8buj4kkmuw==;
Date: Fri, 15 Nov 2024 00:23:05 -0800
From: Ken Pizzini <ken@gnu.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: [PATCH 1/2] printf(3): improve terminology in %a description
Message-ID: <db91cc6f-93cc-4e99-806c-7a8b86232848@vagg4fs7.msa.explicate.org>
References: <306bc8df-d75f-40fc-b1df-1a34cca0b4fa@vagg4fs7.msa.explicate.org>
 <hoxou4yctztlze24w2usfvknrnbs5h4hspzsg6q4zy3hfm2p6k@6erj3vhl5rcm>
 <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <63799ebb-bcc4-45a6-82eb-27520d760191@vagg4fs7.msa.explicate.org>

The term "decimal point" does not technically apply when using bases
other than 10; the more generic term is "radix point".  Update the
description of the a/A conversion specifier (i.e., for hexadecimal
floating point output) in printf(3) to use this terminology.

I do note that POSIX.1-2024 [1] does use the term "decimal-point
character" here, but I still maintain that using "radix point" is a
better term for that object in the %a description.  (Confusingly, POSIX
does refer to "radix character" in the descriptions of %f and %e, where
reference to "decimal" instead of "radix" would actually make sense.)

[1] <https://pubs.opengroup.org/onlinepubs/9799919799/functions/printf.html>

Signed-off-by: Ken Pizzini <ken@gnu.org>
---
 man/man3/printf.3 | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/man/man3/printf.3 b/man/man3/printf.3
index 3bc731f6e..7a96ec9c7 100644
--- a/man/man3/printf.3
+++ b/man/man3/printf.3
@@ -759,13 +759,13 @@ .SS Conversion specifiers
 the letters ABCDEF, and the exponent separator
 .B P
 is used.
-There is one hexadecimal digit before the decimal point,
+There is one hexadecimal digit before the radix point,
 and the number of digits after it is equal to the precision.
 The default precision suffices for an exact representation of the value
 if an exact representation in base 2 exists
 and otherwise is sufficiently large to distinguish values of type
 .IR double .
-The digit before the decimal point is unspecified for nonnormalized
+The digit before the radix point is unspecified for nonnormalized
 numbers, and nonzero but otherwise unspecified for normalized numbers.
 The exponent always contains at least one
 digit; if the value is zero, the exponent is 0.
-- 
2.47.0

