Return-Path: <linux-man+bounces-1637-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2546F95A36F
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 19:03:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2A5C1F23E9E
	for <lists+linux-man@lfdr.de>; Wed, 21 Aug 2024 17:03:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E3741B1D42;
	Wed, 21 Aug 2024 17:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="CoOcqlpX"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9AE913635B
	for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 17:03:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724259790; cv=none; b=QTwWQ8D/Jp0tpkTX7ilMBOVdJUVLMGrhwFdMEGvOhUos7rhl05U2w2HcS6ddttXRiboha70ltFNQdyecT1Z0/MH+5cW+5bCfWI7hZoSNinf8V8H7NUq82sC/Wddhm4g/zYVodarUiUWX41gs/RryJvi+/sYCIvMbRzpkvJ7QujA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724259790; c=relaxed/simple;
	bh=uR25/Zu+AnlS6ZjacnlMejefkkRY6shsihHDaViElz4=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=db9fM4IfERQpcQqM6qI/k5tDEufz9OnQZhM3wArh9hzoSMSiPTsNjLixNmcEqcPXllz2CTWYUWtwnTXMiacXugguueW+9qV8XlvC6FkPxLmQHLnJwS99FLtz3fH9QvFhbKYk3qbpmdtOUYia0fBWHP7E+ZKEbZxL13afwQvT9w4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=CoOcqlpX; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-6bf6beda0c0so39933146d6.1
        for <linux-man@vger.kernel.org>; Wed, 21 Aug 2024 10:03:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724259787; x=1724864587; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=uR25/Zu+AnlS6ZjacnlMejefkkRY6shsihHDaViElz4=;
        b=CoOcqlpXPSIip2ox+drxy2e3ENVeiU8m6Wb425QrgFOFHeaR+rVg5DeJJNc6OvdqrO
         cpWg+Wav33vsFihVYxOQ21bDMmmqw2mlruW3CgAmSiYz3atlr+juP+NC3d1YI9MAbNEm
         pmxoQresLGH6Rm4z5YwTUhHXDoEFrvdl/xeJ3WLRWtDawI0e5Erumm/+v8+xYC/Wqp40
         zAuAFFmeV6L5MawTR6C4fCCu5YMeM7E+z5HRvGvzBnnGX4+pSVDjOLi1lbXml+PVh/j5
         3u0/2r3zk33NM52QRvZ89+58VzJOQ7xKxo2Gn135xc2vVVpuwUerMpoZeu1jDX4BE3Cb
         I07w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724259787; x=1724864587;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uR25/Zu+AnlS6ZjacnlMejefkkRY6shsihHDaViElz4=;
        b=PXGJiOXIUJa3I7PF2go0qatsGt+AU7gf4RDeTnpgB4aDBwZdVKFVu568Gzf3B3Eh/v
         iKQq+4S+Ls+lTB9CXng0V7UiftyhtbUNtoQuRZGp2JYiDnuGLNlyMkFCMEZYRu+MguYM
         cIseUXqWLAmAFJZvSyRbQ+cG3WutxTb0h0S7ZDKdUyvHc3BshndUxKCfzlNlEOJHKxlj
         ez3Scu+6OM7U+ifjWwgRDPY1YcRpYySXEC1iDgziQKQ7s/ZnL/tonVC1Q8Q9RzQbO348
         SMp1IxF72rUqxsP8lEfIWl8wgPubotJo5wmuav7ixm2XLzDkQFGOEBR+vhoBfkcBIDGc
         g6QA==
X-Forwarded-Encrypted: i=1; AJvYcCUGUCeou75vzUr46VtarP/SwhMWlft7aIU9MNN+VTEgrtmDTB/w6s630eGa9y76hCNf7VD0vSC3vnk=@vger.kernel.org
X-Gm-Message-State: AOJu0YzcvR7wGc6NmSBQfq1OS1Xq++MiqCpWPjgkuX+GCbZu/pySCXV6
	OrqTLm/RFFVL46KEyTzgxA2mc+FJdTgYDfhyacPe4rLqN6aeUYHc7GTdwliJWpGUCb4GP9Lj2Os
	AsCk0A218vzd8Axdlnv44TuFIf2Ek3BChkgmM
X-Google-Smtp-Source: AGHT+IHqAZdbjgZHU41cLdLExcbe6ce/j8PjbD9OaDeN2cWfr12AFbkKTTvXAVBG02qWb2SIXjdmybyMDOmiDQf7Yhs=
X-Received: by 2002:a05:6214:a61:b0:6c1:5c33:b93a with SMTP id
 6a1803df08f44-6c15c33ba58mr15921466d6.7.1724259787038; Wed, 21 Aug 2024
 10:03:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Wed, 21 Aug 2024 13:02:56 -0400
Message-ID: <CAJgzZoq7rTQ5mQm9JzSkeGJ8fqu1aDw0BfQnUqs4F24YuxV0Wg@mail.gmail.com>
Subject: arch_prctl()
To: libc-alpha <libc-alpha@sourceware.org>, linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

i see glibc has a _symbol_ for arch_prctl(), but there's nothing in
the headers? a variety of projects seem to `extern` it themselves so
they can use the glibc symbol, even though the man page denies that it
exists and suggests you use syscall() instead.

is this half-existence deliberate, or should it be fixed one way or
the other (adding the header declaration or removing the symbol)?

i notice musl is the same, but i assume that's just for glibc
compatibility rather than an actual decision on their part.

before i copy the same oddity in bionic for
https://blog.chromium.org/2024/06/building-faster-smarter-chromebook.html
i thought i'd at least _ask_ :-)

