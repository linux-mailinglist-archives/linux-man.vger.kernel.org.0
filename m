Return-Path: <linux-man+bounces-3855-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7908CB52B72
	for <lists+linux-man@lfdr.de>; Thu, 11 Sep 2025 10:18:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E5807BB778
	for <lists+linux-man@lfdr.de>; Thu, 11 Sep 2025 08:16:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C4B521FF39;
	Thu, 11 Sep 2025 08:18:20 +0000 (UTC)
X-Original-To: linux-man@vger.kernel.org
Received: from davmac.org (davmac.org [46.43.3.104])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B6B622FDEC
	for <linux-man@vger.kernel.org>; Thu, 11 Sep 2025 08:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=46.43.3.104
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757578699; cv=none; b=ZyTuJ+vy0gnVaGdLMMXRRaORIx+Hu7+nEU2lh6GI+FGQtUAg/Fbn0BFARS45DQZvA4VLtCLapDq93xOIlzoAdRqEml/8bP+oEX1oCOPegD5eIBS3B56ZZ3sP+Jv5fQY++7KXS+MvM9X3HLFcO+o+0kA50ukP42KPt9bQlHESv9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757578699; c=relaxed/simple;
	bh=nNYb4rBmtPMFK2Jyd5N6u1jjKolear3kPBZ3MulWYDg=;
	h=Message-ID:Date:MIME-Version:To:Cc:From:Subject:Content-Type; b=V726zx2yb/jsnmG2CfFgO7uuYo3/T02LIYnTLRAtE7J9PclBArNOSHUrK9iRMaesid4RIAnXuydGvvvt/9br4Pwc3/NzjJRJuDsUdE7qUE0SOHMjUwBS2y4ARrMlVgJTDXhps19hIISJC8I312agnXWF1/2hPHa+yCtkCppA4BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=davmac.org; spf=pass smtp.mailfrom=davmac.org; arc=none smtp.client-ip=46.43.3.104
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=davmac.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=davmac.org
Received: from [192.168.1.209] (117-20-68-65.751444.bne.nbn.aussiebb.net [117.20.68.65])
	(Authenticated sender: davmac)
	by davmac.org (Postfix) with ESMTPSA id 5CCEBE0003;
	Thu, 11 Sep 2025 09:12:58 +0100 (BST)
Message-ID: <b7f25b3a-5618-139d-9f10-ba2f6ec1dff9@davmac.org>
Date: Thu, 11 Sep 2025 18:12:24 +1000
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.0.2
Content-Language: en-US
To: alx@kernel.org
Cc: linux-man@vger.kernel.org
From: Davin McCall <davmac@davmac.org>
Subject: Possible error in capabilities(7)
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Alejandro / linux-man mailing list,

I think there is an error in the "capabilities(7)" man page. It says, 
under the heading "Capabilities and execution of programs by root", the 
following:

        Thus, when a process with nonzero UIDs execve(2)s a set-user-ID-root
        program that does not have capabilities attached, or when a process
        whose real and effective UIDs are zero execve(2)s a program, the
        calculation of the process's new permitted capabilities 
simplifies to:

            P'(permitted)   = P(inheritable) | P(bounding)

            P'(effective)   = P'(permitted)

        Consequently, the process gains all capabilities in its 
permitted and
        effective capability sets, except those masked out by the capability
        bounding set.

While it seems odd, I think the "|" in "P(inheritable) | P(bounding)" is 
actually correct: the permitted permissions become those that were 
either inheritable or in the process bounding set. However this 
contradicts the final paragraph copied above: "the process all 
capabilities in its permitted and effective capability sets" - no, it 
gains all the capabilities in *its inheritable and bounding* sets - 
"except those masked by the capability bounding set" - no, capabilities 
from the inheritable set are _not_ masked by the bounding set.

Regards,

Davin



