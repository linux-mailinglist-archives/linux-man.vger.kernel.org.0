Return-Path: <linux-man+bounces-738-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACD98A35DD
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 20:38:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C45FA1F246C9
	for <lists+linux-man@lfdr.de>; Fri, 12 Apr 2024 18:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64EB914F138;
	Fri, 12 Apr 2024 18:37:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="eFDwVPZR"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E07A1514C8
	for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 18:37:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712947052; cv=none; b=Nhiv9vBoYhF/yDFlX/1FnJvZVXtaOhD2rJu/BBhlggxCC8kldTR9KCtW3dL6watq1GSyn1hgbtvi9rU1grd2o1maHP7LaPDoHJMVLBoyJw00fSFuvVwgFn/DMZmJu6AThENzDfcTTuULrO1SEQc/vlZdepyYtR3lVUAjEuNJJWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712947052; c=relaxed/simple;
	bh=1vN/6Y6sRP87PvyuXRbvQZdbEHL4iLd82CSWULhudmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d4xisXB5d5UOXYM9MMtgkrW+rcSRR0MwI/BFUiz7V3cmMegGplE86zZWLxO4iWTMoZJsZUNqOObrrrEgGdPIDwL9MdNmqMpg66aIYPIS2A5XbrgIQ7le1NeLTaBtuCfH0zyJV8pjVCr3cuEaqTbyXWQOk+eacrcpcdbk5VeWF/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=eFDwVPZR; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-56e2c1650d8so1255911a12.0
        for <linux-man@vger.kernel.org>; Fri, 12 Apr 2024 11:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712947048; x=1713551848; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O+93cWKZ9nt285E9OVTTBjndaAEHyL8wMxqoeSJZql4=;
        b=eFDwVPZRndNjRRcfuAEcsTwL8kNiqamK7eNLFBWk2tOo/plymKyQtvmkMIPFtJizNo
         rphW4eUlrGup6MUAaPrsfOEVUTODrnqHqUf2kLM4Rs/u3th53RnoFZ1vV8PyxHk9xL6/
         xeVLsdCJQgIqrnQVPBBz3GCBXMgu6OOxs4ay/ofiJU6TFq+Gh44n5Gn67WbJlGRMgR/X
         twrMsWKajkqR9c6gsMUAEy3XdtqOrx2rqewl7h02MzylPNyvaAvpb3w5VbpDmntJemv7
         zqEJY13XpTleeyjtCJ3+wXmCsbTutkJuCJGm8TJQcU21tvlKKnPONZ+GT74N+qTsw++4
         etYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712947048; x=1713551848;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O+93cWKZ9nt285E9OVTTBjndaAEHyL8wMxqoeSJZql4=;
        b=SjzBd+WCY6qwPaDSfShG2X8ZoAg/dhgac+DnfFlSPVh/j2D2rNTXoxBlUxjQB4Ye77
         0JaWojoy5GAdY7W9m+0zKTEs6+sTmzbKZZGnpAamddNOyupflIJ4fvwyGudFwHs5PCqa
         j35DrwMjFSWr7hRWNdSs7bGveljwSBaK41+kLCs5zWKrok8/RhzgEgDW1M6KpOnumE3t
         D6Y8WddREf2ZS5a9D7aAsUQA6PggDx85qnZBhWcmUMqtZRDwYIcS56JIx8SN7h+p9vMY
         AA2bVYNyWosPnCNrYdqlGL8TpZ8tnLhT8FgVPluXoUUjW4jVUoqYZUwLfxywg53fLZnx
         lnWQ==
X-Gm-Message-State: AOJu0Yz33y9xbga/DRYa5dKFyO9sh0b+eM1xO0KCeBLSDyBg4I8Z/xJg
	y5CMq40BHox+lyoNzJEmd8IPMg4h3RhkXeCurZhwn7HGSGfu7XhY
X-Google-Smtp-Source: AGHT+IHO5dnLRYTw4B4xHAT1rmGxTsQE+w+QUrYOzBylEkOMaHbNF+1w91g9Vdk1hxL5ws7oSFETyQ==
X-Received: by 2002:a17:906:f855:b0:a51:aad5:8d62 with SMTP id ks21-20020a170906f85500b00a51aad58d62mr2416826ejb.58.1712947048173;
        Fri, 12 Apr 2024 11:37:28 -0700 (PDT)
Received: from eldamar.lan (c-82-192-242-114.customer.ggaweb.ch. [82.192.242.114])
        by smtp.gmail.com with ESMTPSA id e10-20020a170906c00a00b00a51d31924c6sm2092836ejz.189.2024.04.12.11.37.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 11:37:25 -0700 (PDT)
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Received: by eldamar.lan (Postfix, from userid 1000)
	id BFE9DBE2EE8; Fri, 12 Apr 2024 20:37:24 +0200 (CEST)
Date: Fri, 12 Apr 2024 20:37:24 +0200
From: Salvatore Bonaccorso <carnil@debian.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: proc.5: Still refers to "described in more detail below" for
 splitted out manpages
Message-ID: <Zhl_ZOqOGkJizieb@eldamar.lan>
References: <Zhlth9wCHbxoNkMi@eldamar.lan>
 <ZhlzmymKd3XBq9Yh@debian>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="XJZQtiABdXH44SL+"
Content-Disposition: inline
In-Reply-To: <ZhlzmymKd3XBq9Yh@debian>


--XJZQtiABdXH44SL+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Alex,

On Fri, Apr 12, 2024 at 07:47:07PM +0200, Alejandro Colomar wrote:
> Hi Salvatore,
> 
> On Fri, Apr 12, 2024 at 07:21:11PM +0200, Salvatore Bonaccorso wrote:
> > Hi Alejandro
> > 
> > Back in August 2023, various parts were split out of proc(5) into
> > separate manpage. What seems to have remained from the split is the
> > mentioning:
> > 
> > [...]
> > 178 .P
> > 179 All of the above are described in more detail below.
> > [...]
> > 
> > I'm not sure what you would like to prefer, so I have no explict patch
> > here. But maybe this can be reworded to "All of the above are desribed
> > in sepate manpages prefixes with proc_"?
> 
> Thanks for catching this.  Yeah, something like that makes sense.
> 
> You could add to the commit message:
> 
> Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this page")

Thanks for the quick feedback. So please find attached the proposed
change. Let me know if you want something changed.

Regards,
Salvatore

--XJZQtiABdXH44SL+
Content-Type: text/x-diff; charset=us-ascii
Content-Disposition: attachment;
	filename="0001-proc.5-Refer-to-split-out-manpages-for-detailed-desc.patch"

From 07bf84cbb2e78595b4514fe820ae5574bba8d0ec Mon Sep 17 00:00:00 2001
From: Salvatore Bonaccorso <carnil@debian.org>
Date: Fri, 12 Apr 2024 20:29:06 +0200
Subject: [PATCH] proc.5: Refer to split out manpages for detailed description

Back in August 2023 various parts of proc(5) were split out int separate
manpages. The final cleanup in 92cdcec79df0 ("proc.5: Clean up after
making sashimi of this page") missed to as well refer to the split out
manpages and retained the wording that details are found further below
in the manpages for the various files.

Fixes: 92cdcec79df0 ("proc.5: Clean up after making sashimi of this page")
Signed-off-by: Salvatore Bonaccorso <carnil@debian.org>
---
 man5/proc.5 | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/man5/proc.5 b/man5/proc.5
index bdc47456bdce..4c20920e1e3c 100644
--- a/man5/proc.5
+++ b/man5/proc.5
@@ -176,7 +176,10 @@ Various other files and subdirectories under
 .I /proc
 expose system-wide information.
 .P
-All of the above are described in more detail below.
+All of the above are described in more detail in separate manpages
+prefixed with
+.BR proc_.
+.TP
 .\"
 .\" .SH FILES
 .\" FIXME Describe /proc/[pid]/sessionid
-- 
2.43.0


--XJZQtiABdXH44SL+--

