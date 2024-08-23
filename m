Return-Path: <linux-man+bounces-1681-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B343D95D55F
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 20:40:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 701D628373B
	for <lists+linux-man@lfdr.de>; Fri, 23 Aug 2024 18:40:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 58FBB190662;
	Fri, 23 Aug 2024 18:40:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="hJz3Gt/f"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-qv1-f51.google.com (mail-qv1-f51.google.com [209.85.219.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD13518DF81
	for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 18:40:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724438430; cv=none; b=CLoFji3R1f6i4FTprArNtSb+wLQ/fT+ibc1+diUV1eKOzwnPfR7z9xMgSPPCBvYIWnhyAVbSJQwWC7xouPRarC3u1bl73qJW4fLnZ0IDCMIgMhkvS9oJ9/4SHWNmYU7IDyMsvnsyQEwx7zwKPQQQUrp6Nwsj1/BNv6BLzOLlizk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724438430; c=relaxed/simple;
	bh=zL3yzza5C+EWnazlLW1mT2qOD81DAQ730CmwwYa476o=;
	h=MIME-Version:From:Date:Message-ID:Subject:To:Content-Type; b=SGsrZvuocFSdfLPts2GuBusXEfnxZzDICE5jw/UtcwbW07NDaduES0FhnWeXuSzWQZhqOiHsdMGcq7byirctMU1+wZh/WGOf+R6ExTl3qaFFR5sD3kCWpZqkY94EIhQnxYYy+zLmBrt+13a8h1q3tSEcw/eXMDImyoXK9GOH1ss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=hJz3Gt/f; arc=none smtp.client-ip=209.85.219.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qv1-f51.google.com with SMTP id 6a1803df08f44-6bf705959f1so19169226d6.1
        for <linux-man@vger.kernel.org>; Fri, 23 Aug 2024 11:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1724438427; x=1725043227; darn=vger.kernel.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zL3yzza5C+EWnazlLW1mT2qOD81DAQ730CmwwYa476o=;
        b=hJz3Gt/faUCbsoTTIN4qUOgVw8rTOC/hrKt5WptwvDCJXGyOPRh9X1nWVb7jMlcB3O
         90vBCweScC/Ck4JoHfUolRpHfJV0MfPFKaF3u14u6pHOoxK+EW4lQ9o/fBi9oL/xanF8
         hsErTIOuqmLHLl/ZjriA6L1ixkHdh0J2N9AypZxC4JgHXHwqkTXufrCRYHp8FH1PR68x
         rEf+pYIP6RYCGit2NN6kEPyHV4IsoV2awH5vQW7efuA21it7F/nc5MiBGbZU7Mi/vXN8
         ShUsjFWNbh5cFwjpXdZqWefFiMW46fNQ/vsw1NAUFur0D+tsqj9F+QvqnrDdxIMOjsCo
         tQIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724438427; x=1725043227;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zL3yzza5C+EWnazlLW1mT2qOD81DAQ730CmwwYa476o=;
        b=Nt6oHcqOcNhJEBumR52+I2mSlCggM0DvdIquRfgKATZwkGPxVWTY8NMSNpsNJVX9UK
         Tyd7PqzpEWlF9RboB8msxO8m6IBScCIr4awtXS1tL1Lv432zCn5TVBwip5yjweDgV2Op
         bw6obkBQT4PtiNRo8mFssQNpVtiPfK+Nuu04O3JJ4oZll9xoPFEJjWwLNYaI8bkYR7/8
         o7JrecdDWy956cxq7pJloz1fisBqHKljDMu9+DGdq3rdHDtMh9Ahcno3TUcbEpWMmxwC
         fI6eNJOl1S6fzCJmBcn2J3blgaCco/ODqvVXl5EhqPVf8sdwJnPlLcKigrRTDqx6uuMn
         PtoA==
X-Gm-Message-State: AOJu0YyzQ/h5l1rPyWztm9Q75eKhvzeZkdQshdFNheMk0cRlm0yBhLrq
	CiUbxDhdqTRMECtq7i8N1rAqLdVH8/OUixVEfraLfgvJEt9mddKdoTLDhhI5h3BG8v+fvdfDMpx
	rADRLRj7rszfBd3P52LjRP7Dg3afyfdEIQWwwlo4tWy2G+GBm4Jan
X-Google-Smtp-Source: AGHT+IGd0wy9mXox0MDUCYWxqlaw1d5Y4hzsdXZDOlwQ06N+1Fur1TdZGn/SxVvI8Gm423Q2L9xD2J9j6yrIVbet+A0=
X-Received: by 2002:a0c:f20a:0:b0:6c1:637e:b5c8 with SMTP id
 6a1803df08f44-6c16d444277mr63030566d6.5.1724438427359; Fri, 23 Aug 2024
 11:40:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: enh <enh@google.com>
Date: Fri, 23 Aug 2024 14:40:16 -0400
Message-ID: <CAJgzZoon_Ewki=qGEPnzbSi7Tfu-i51cT529z3obiHeaP+WuuQ@mail.gmail.com>
Subject: fchmodat(2) does support AT_SYMLINK_NOFOLLOW now, no?
To: linux-man <linux-man@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

subject says it all... the "This flag is not currently implemented."
on the man page is wrong, i think?

