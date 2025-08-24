Return-Path: <linux-man+bounces-3675-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 84054B330F2
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3B4857AD79F
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 530522E0904;
	Sun, 24 Aug 2025 14:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="Em7W1upe"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE0892E0415
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046980; cv=none; b=OBR3mYLHIWHGwdXxh69G4ni5WMV+hv3lFzBV3L8hBAHrnVN4AxaV8Xzw1TEebcA31vOpGw3nQBUo+b/QVkChBkFaA+sAY+ORRfLOGn+/+lUf8oDpYPBo85N5O9bbVIDKESfQxzxQlm82WxgQobMBe/+ENNWakWGqAfSqVzyFWvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046980; c=relaxed/simple;
	bh=Q/hqz6cAWgJioG7FVPvKNI27xsTTTsnFbE9/9HqfKWs=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=cfoTuBR4C9miBz7lGcPy1Fl/gQimN8S432aD6vZ08hXnJXRxnPNu/GyOBiL/9y+CdRrjBzDqRWJ1T/E4P2AzraCo4fdv8eKfFzyPWDoOEosscqXDor2uPHDN/vXOorGp+oLyOcpFmi2/8DeiTHeP5KP/cvTLtKvNyR4p5sSPVJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=Em7W1upe; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046929;
	bh=E82dVuAK68DEEvttSmMDKf23OekqpPKexwan0lM7yQI=;
	h=Date:From:To:Cc:Subject;
	b=Em7W1upez105w1VUZeORHYF+tn+ByO8RN4Xybe3xaDhgC9nHkCdLxY52ZOXqcOhCp
	 LegNQCvbWL4ZYryzDSX7khwXQj6G9QrTVFTLIo0ejuZyNpjFe2RwmpMqmNdRNWvqKt
	 sLaQvtYxRTay9DUIyrK1tmTieUAPju155prCIcg2UMYyHRDCQq2DsKB7/fp9YUrRAr
	 FJSxti/4Oe5JO8gVPQeWJqaOloFcLDysqU/AjWqeAQu2lOof5EWkmTANIP3EcCSrW0
	 NFYDcMsbTh17qWcla1oP1xd1f6jGdWfdCl0B7IuptTOhM1u3PaEw5XIS0tVCNlnEp3
	 N/OA/3xzy9wnA==
Original-Subject: Issue in man page qsort.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021682.0000000068AB2651.001397F5; Sun, 24 Aug 2025 14:48:49 +0000
Date: Sun, 24 Aug 2025 14:48:49 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page qsort.3
Message-ID: <aKsmUVBqQ8Y5pUyB@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n, size_t size → B<…size_t> I<n>, B<size_t> I<size>      (2x)

"B<void qsort(>size_t n, size_t size;\n"
"B<           void >I<base>B<[>I<n>B< * >I<size>B<], size_t >I<n>B<, size_t >I<size>B<,>\n"
"B<           typeof(int (const void [>I<size>B<], const void [>I<size>B<]))>\n"
"B<               *>I<compar>B<);>\n"
"B<void qsort_r(>size_t n, size_t size;\n"
"B<           void >I<base>B<[>I<n>B< * >I<size>B<], size_t >I<n>B<, size_t >I<size>B<,>\n"
"B<           typeof(int (const void [>I<size>B<], const void [>I<size>B<], void *))>\n"
"B<               *>I<compar>B<,>\n"
"B<           void *>I<arg>B<);>\n"

