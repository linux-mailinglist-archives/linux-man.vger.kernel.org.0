Return-Path: <linux-man+bounces-3065-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A59AC959A
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 20:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7ECB43B1C9A
	for <lists+linux-man@lfdr.de>; Fri, 30 May 2025 18:26:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F08AE275862;
	Fri, 30 May 2025 18:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=maine.edu header.i=@maine.edu header.b="aa1DdjtV"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C04F11A239D
	for <linux-man@vger.kernel.org>; Fri, 30 May 2025 18:27:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748629632; cv=none; b=UhilUXZGEsWwJe/j0O+RrFfILHT2hIfFtvuSBTKoQ5ZsLwotObTTF0kAR7iJHwUkO9ULagwycajijH1lBclRK1XpyY64EZ9cE8HVmrcqX/0HNIMA50CpOdGt7W95oKkyv/vIyIJtEAMGq8czn76quhw1htrVRRRzezOmkAlERbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748629632; c=relaxed/simple;
	bh=FmpB/Aj1Ep3EyzFrvNC812JhYkt927FYrpNQlAAsRys=;
	h=From:Date:To:cc:Subject:Message-ID:MIME-Version:Content-Type; b=HNzDHVfqXY/tdTQ/13lb2fpxGmmmrB4Jh5RJPd6EW2xA5GWBInJ8rmkduQ8qtUExU6Su2+/Sxvx2DVT7YRsNFYsLVzndQk0DVRH9mFay0W/DXDkZYk7Gz/SOVZKUQlG0BVVnWVXNJ2Qfg7/CoDjW2D+dX2GqaiT2Pmx/zO3LLXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maine.edu; spf=pass smtp.mailfrom=maine.edu; dkim=pass (1024-bit key) header.d=maine.edu header.i=@maine.edu header.b=aa1DdjtV; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=maine.edu
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=maine.edu
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7d09d4c8543so219016085a.1
        for <linux-man@vger.kernel.org>; Fri, 30 May 2025 11:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=maine.edu; s=google; t=1748629629; x=1749234429; darn=vger.kernel.org;
        h=mime-version:message-id:subject:cc:to:date:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=n7N5OIs33hnZwEtGFnfa67C72SZU8AYKnH8/Etext+4=;
        b=aa1DdjtVwZRuAWum2srJIkenZiQNwWVuGC5abaQqwjZfQHGFdifIJGCtYRgLtuZJZv
         7Uz2HxziQvm5qY/Y7BMwO6REBNH/L84hZPQYGajcG260TF15fEuQ5Vd/AErDbTbj95K7
         23Qxe8dHioLzQim5+HnUFBORCaAOSgXWXyPRk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748629629; x=1749234429;
        h=mime-version:message-id:subject:cc:to:date:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n7N5OIs33hnZwEtGFnfa67C72SZU8AYKnH8/Etext+4=;
        b=vsyFvLG8T0WA3EeESVJZpzhUUP2YVhtxe5zpdiiYtMg0Cnh1dwWDislBS6dLUWZFJ6
         ox74tMn3mfZzQRIouG+r6IBtBm+KN24TRq2hiNngce7xRaDEXrDdvJyF+Duhio2tgMlO
         TJq4MkSqP6mn3BHfVxxGfI2ii/A3/ImVsdXRXhg+OWOkZzp2kyklkn11BHBmkG1c0gf5
         5NB+tGNMN6sNXGQ6SakxWLfD3dWSH5mY+KU+ShzxNZRvjvTJAXCeVtSRflQ4kUbDqAQS
         8UGLuK88H09DjmIUjCMcWKZpgkG0m20ED7uG6Zi/h01xXJ1OQosgQy26CWI8pkt86uDB
         8clA==
X-Gm-Message-State: AOJu0Yzax2NnuMfJSsI3YoacmwNoi4+O+gtKMNunDIUc8CHQk0PG99+G
	+I6kEzk80vggs67zRZlnB79bEAOl5l/nRPp8RXQd41UPUstyTtTH6wPxyeMiUfmdmAB/KHy26fX
	kmR4=
X-Gm-Gg: ASbGncvGhsK4UQU3CMSCuz4joKgfRTtGjJB/AzC/zmCyBdTlmbpoWgoWmBnRrU1zI+W
	/yMKE62/OPGEz73S0BDo8e7CEXshoiq/2L8/lJGyGbIbX8Uhi4cVM9cYG2+Jf63k+oF7b2fXLhI
	DI8g4XFvmPcBVt6EpUyZTGDzXKpprbc2ueCSCmFdMalBk+xRD09hAGjmFNQPcJnD1+fpRZqHPdQ
	r36HOm6oKltfCWwvuPl1aobKw67a9tGpSyfJgYEw0uRBcoub+AQexP52CyYkmOCeQ5bOPthA2WC
	BrJU/fFNz8R4jRJ2uW8FvNlakYs431DddPAjXzTLERul3hKlVeNMyFlMKu4iML9j/fhKGdo=
X-Google-Smtp-Source: AGHT+IHU9Fftl1ZBUH4vMLCeQlyY6XeuDu0dM7+fXoEL/pOI0bqlHFLAFP3y2uRHTKDAS1Htp7eo5w==
X-Received: by 2002:a05:620a:1a26:b0:7cf:518:755a with SMTP id af79cd13be357-7d0a20252a8mr697318785a.53.1748629629480;
        Fri, 30 May 2025 11:27:09 -0700 (PDT)
Received: from [192.168.8.146] (weaver.eece.maine.edu. [130.111.218.23])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7d09a1bb2desm273369785a.117.2025.05.30.11.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 May 2025 11:27:08 -0700 (PDT)
From: Vince Weaver <vincent.weaver@maine.edu>
X-Google-Original-From: Vince Weaver <vince@maine.edu>
Date: Fri, 30 May 2025 14:27:07 -0400 (EDT)
To: Alejandro Colomar <alx@kernel.org>
cc: linux-man@vger.kernel.org
Subject: popen.3 return value
Message-ID: <a07f79ff-a659-d54b-ea4c-d5cafad58e54@maine.edu>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

Hello

I came across a situation where I feel the popen.3 manpage is a bit 
misleading.  If you run a command such as
	result=popen("/usr/bin/aplay","w");
on a system where /usr/bin/aplay does not exist, the manpage seems to 
imply that you'd get a NULL return value.  However you do not, since the 
shell itself forked properly you get a valid FILE * return value.  However 
the first time you write to that FILE * your program crashes with SIGPIPE 
(assuming you don't have a handler for it).

I don't know if there's a way to clarify things.  I was thinking something 
like the below patch, though it's probably not the right section to put 
the info.

Vince Weaver
vincent.weaver@maine.edu


diff --git a/man/man3/popen.3 b/man/man3/popen.3
index 7c665a342..810f7e631 100644
--- a/man/man3/popen.3
+++ b/man/man3/popen.3
@@ -115,6 +115,17 @@ returns an error, or some other error is detected,
 On failure, both functions set
 .I errno
 to indicate the error.
+.P
+NOTE:
+.BR popen ()
+will only return NULL if there is a failure starting the shell itself.
+If the shell is forked successfully but the command inside the shell
+fails to run (for example, if the executable is not found) NULL will
+not be returned.
+Instead a
+.BR FILE *
+will be returned, but any read or write to that will generate a
+SIGPIPE signal.
 .SH ERRORS
 The
 .BR popen ()

