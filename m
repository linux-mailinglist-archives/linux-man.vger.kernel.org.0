Return-Path: <linux-man+bounces-3677-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 181EEB330F1
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0FAC11B25E69
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B8ED2E0909;
	Sun, 24 Aug 2025 14:49:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="IjI//qqx"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9092DF70E
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046980; cv=none; b=anuQ1RZ2jQ6SBp/3bpGTSzhhHgb7AStbLQD0pEaytHb2jcxVHh+I1TJZeBYMhi/EWCePerWI571KdMJeqq+rYKlXKicsI6WhV16t7UXmm1ERYufhIgg8ePHNrA2lzdTI1EHNV99CvEpRHB6BVUGFAaw3c+Z8SBY+dpfecoXS7Y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046980; c=relaxed/simple;
	bh=R2ioz3vi+IR/Xr6MnTtHEI9Tl062bvYLSnyx04TcE98=;
	h=Date:From:To:Cc:Subject:Message-ID:Mime-Version:Content-Type:
	 Content-Disposition; b=o4BfZ9l12cKbfw365lyVjkgXh9GnC8A01GCthkkQ6gRDCXBNg8lv9oH3h17vLiVdFJEovI0hkbvcTrTbKpoV1gQTCu8TR5//LkuBjQJdltHaHCalOPZOEXZzs+645fuyLOWRgYH57f3z924AfWlj9cU3a+6Yag52Ne/HmmtpPus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=IjI//qqx; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046929;
	bh=FdJKfITfYDGuhLdD/ZgC7PmlbRjbXIOPloCvrCuv8lA=;
	h=Date:From:To:Cc:Subject;
	b=IjI//qqxEgy94zzl7IoCTWdJkDvEoB3ysSV1wohxa+N4w9/gqG6RoxFub6vILL9Ke
	 +YSpe8QwC44JOZTNy700zCqSDes0dfo/ZOmo8n3I+L0DMW1XqLnu+ICz2vKZYdd/SU
	 oEBdXC/iMD7nui5YnX879q9OoE24COou1vLXG8WULtCHCC+DQj+/ZvZP0PpoidG/MI
	 GlpVEDITQ/DL9TJLF1QRE+nZ17nJNqHYhfHrjb1WqexopO2KTY8aR5XiYwATdSYThD
	 LPNjj2T6iJqD7JzG5kVGlUqHxwy+Pc/WChGGpUvyV6OVvrqY4TdU642zfx/9inf3/F
	 X5JjmYUK1CuhA==
Original-Subject: Issue in man page random_r.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002169E.0000000068AB2651.00139827; Sun, 24 Aug 2025 14:48:49 +0000
Date: Sun, 24 Aug 2025 14:48:49 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page random_r.3
Message-ID: <aKsmUfiIuJ6lehrG@meinfjell.helgefjelltest.de>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
X-Public-Key-URL: http://www.helgefjell.de/data/debian_neu.asc
X-homepage: http://www.helgefjell.de/debian

Without further ado, the following was found:

Issue:    comma after B<initstate>(3) as in previous paragraph?

"The B<initstate_r>()  function is like B<initstate>(3)  except that it "
"initializes the state in the object pointed to by I<buf>, rather than "
"initializing the global state variable.  Before calling this function, the "
"I<buf.state> field must be initialized to NULL.  The B<initstate_r>()  "
"function records a pointer to the I<statebuf> argument inside the structure "
"pointed to by I<buf>.  Thus, I<statebuf> should not be deallocated so long "
"as I<buf> is still in use.  (So, I<statebuf> should typically be allocated "
"as a static variable, or allocated on the heap using B<malloc>(3)  or "
"similar.)"

