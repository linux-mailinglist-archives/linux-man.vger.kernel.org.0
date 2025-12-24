Return-Path: <linux-man+bounces-4520-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBAFCDC8E7
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 15:41:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0C7F305F69A
	for <lists+linux-man@lfdr.de>; Wed, 24 Dec 2025 14:39:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1E7E3590C2;
	Wed, 24 Dec 2025 14:38:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="ZIc71X3o"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08962358D37
	for <linux-man@vger.kernel.org>; Wed, 24 Dec 2025 14:38:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766587124; cv=none; b=EjQzJRZ962FiE4lC2gaNNof6ujKc6gIp6L2vowpyDOJk8sVShW78f9bOQendr5i3pl23Cp3dqJOoUR0+SIq3/mOpiBiF2gLGaf1Ck8i4+gzq7PA6+rmV8LqE2pIaPpyJ5vZl4dI09kSAt7pV4gMJboZ5kU8++6E9qDfYPBuqMc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766587124; c=relaxed/simple;
	bh=RRTlmNB/P4eaFeLfaTF1PPBpI/XHcYViE6gj5JRcqR8=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=B718BM2+P14H//vbJEoOi7Ghe9JhGRJQGo8wwSpunTLelN/4EjZplJnovF0ADVD7WYpIp50yvi/w5zP0G+W1DJF8JvgIc9oDXUVbHcwQqRkX+UsVP4963c3td5xjQvsahzX+y2oyGcaSiU2WchtwTfN9BNSil5GekAo94TYJ8PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=ZIc71X3o; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1766587106;
	bh=E1qIjMqvmjWrfIyuoFkkCIV+5jhYPiz9XZzqbGi32PE=;
	h=Date:From:To:Cc:Subject;
	b=ZIc71X3oHRy7K4ym1l0yyA1kMF47bHTNi2Tl1T0BULe/nAz+fvIEwa+DSv8vxMsGT
	 YEtGb6ZHhh2QBUm8UY4qfRcu+lfqAS5aa3yd2AWD8MXj90OzZNY6Wp66lRYLRsV9tE
	 C5udvG/QYHq7Tu4nHP7EnB7ZTt+oevu7H/oQjoG9UzyoG31rIYE8UrHLrynihZfO+A
	 dWMQHzK6ISy8qJCiA2r44HtbzAY4stwoWTt7eE/FpT+vWrKJdS+l1jIee86uxhNRrA
	 cNqms6vKlzANcTR2Ld1nvMmIy+3l0UehiGtEUtc3ps+usaIlwbMhRbWtmThBxG5V75
	 vzZ9G9hz4jsnA==
Original-Subject: Issue in man page getopt.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000020B4A.00000000694BFAE2.00319A6C; Wed, 24 Dec 2025 14:38:26 +0000
Date: Wed, 24 Dec 2025 14:38:26 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page getopt.3
Message-ID: <aUv64vEewxyLWtuS@meinfjell.helgefjelltest.de>
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

Issue:    behaviour → behavior  (according man-pages(7) american English is used)

"By default, B<getopt>()  permutes the contents of I<argv> as it scans, so "
"that eventually all the nonoptions are at the end.  Two other scanning modes "
"are also implemented.  If the first character of I<optstring> is \\[aq]+\\"
"[aq] or the environment variable B<POSIXLY_CORRECT> is set, then option "
"processing stops as soon as a nonoption argument is encountered.  If \\[aq]+"
"\\[aq] is not the first character of I<optstring>, it is treated as a normal "
"option.  If B<POSIXLY_CORRECT> behaviour is required in this case "
"I<optstring> will contain two \\[aq]+\\[aq] symbols.  If the first character "
"of I<optstring> is \\[aq]-\\[aq], then each nonoption I<argv>-element is "
"handled as if it were the argument of an option with character code 1.  "
"(This is used by programs that were written to expect options and other "
"I<argv>-elements in any order and that care about the ordering of the two.)  "
"The special argument \"--\" forces an end of option-scanning regardless of "
"the scanning mode."

