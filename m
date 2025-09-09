Return-Path: <linux-man+bounces-3853-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FCBB505F7
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 21:15:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6241E3AAAFC
	for <lists+linux-man@lfdr.de>; Tue,  9 Sep 2025 19:15:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14C162905;
	Tue,  9 Sep 2025 19:15:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Miyw7hdU"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E2233A01B
	for <linux-man@vger.kernel.org>; Tue,  9 Sep 2025 19:15:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757445315; cv=none; b=I4WnYTLj5ZOT3ErFihv9B5SlnnlVfxHeWbJHLcxVrcLq+dHmjT+5T8aIzhZSNyd3kbIZCK+X5uGHd7M6bhqWbEV6ycxFwMmiphtAfm2JBCcj35FVmFpuwM5ARYki8RCtlbYzfO/CoGNuipd6KBWsuivlHe1cSRMPcklqe6QO/g0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757445315; c=relaxed/simple;
	bh=vaWrCQwcSd3qwXMDejCcoVQT+cBBfYrMJnOEuwpuKUI=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=IcYiKom8L5BVpjarfgrtQcBbHfPHDGJZkZnYJw6MTnmY5A3jKk6log8o8EuNVM3rBvS09TvP3KyFBrx/61G/Y2exFhw5Nfq88zlT6QF+Q7SGuLm3sE61i6/c3F4njTOiQlPacTL5TzP5lpdf5XDP0WL0i7bl4A6IBO4QsYUXILU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Miyw7hdU; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-24b164146baso38817985ad.2
        for <linux-man@vger.kernel.org>; Tue, 09 Sep 2025 12:15:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757445313; x=1758050113; darn=vger.kernel.org;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vmWJLldGA0ZhmxI2xlD3jEvI42Oog6ZSmMH9ercT9/A=;
        b=Miyw7hdU2xlfR8NrlMmBzCJGOmzswqTOXH7flisnUMNQtjXRnRowN1gKDsK9Qjs2ga
         f5V0r/pt4j2STZ+WyPDSs3Qrp4SV4V87o34mYLnAaYUF1+Fuk/qHiu4cfe+XlKRd3QJU
         3mKaK1ho6dySPs2xjwMf6T/U12AVKR11OUqRNssPPOA3z6JuvkjJqzJW9Psn01EQZ7v/
         Bc500CQM1YtWGZPfbckt8wRtmNftKoWdwBMmSSltmlko1X17CdCigCS1iV9QJ4GjfU9j
         i3Lrs62L/xipFht2G4k1eHidIqL6g0ZtF0RRLntzQimU5ggDaedHOdMvdPu7QLNWHG2G
         vvTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757445313; x=1758050113;
        h=mime-version:message-id:date:user-agent:references:in-reply-to
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vmWJLldGA0ZhmxI2xlD3jEvI42Oog6ZSmMH9ercT9/A=;
        b=bUxoBxpdDIV6uXYq0268sLWZUtyTeOOou2pQvMLBFmwdN4+Zuh8B4scKqlFrRuUK9B
         yRPpWM+i5r34tXVAoJO7Qqy81iwU1YPzGuKsCqxEa35PeOoKp2HQUanBO8KvIYYXsBi5
         K05HuuwJkBclv+BIXTDbpGg3KI2WvI+UJzhbpXPfvprDLiSUmHAIaHVFxgOpzfIck7+i
         DUTa+2L77huhM2j0ZCsoDGNp8fSZ+H3eHXxtgtzWNY73i8rGDzfBs8RueEuLBz3KVf8S
         8YHwDa2G5nTMGXfCsMnrlyC9BwedVDlhcf2stNoHthTZ2a5OpxO4lKUVw4pHCRZBzpt0
         QeZw==
X-Forwarded-Encrypted: i=1; AJvYcCW83Jdej3jW4q4SKYgFDHbdYrv/ra1GN7tJ6UxjgueP64qe7XehWIDjgXog+UnXImkj3HsNkLHqfmU=@vger.kernel.org
X-Gm-Message-State: AOJu0YxwSJB27QTmDzf2/Xr56Mv2vSUC0XKl1bHy6G9ag8+Wj9XvIO33
	lqZ5bfgo8DjQ+EOYnkyq4PwRZR4r5AZRQ7ksy5RSOtiCPFkYuMqHCGy84ZrCDM5OmuitzxFrmmg
	D8tGL
X-Gm-Gg: ASbGncvIJQtFvGOd79YCfedmOx+l2H15AROJ5YClsbqa9JMJoqtgd/TdLWSG18xN2yx
	yLw0cGj7BePk3bXWFN5J6AgrhXZ7BioFXGe2AqPbBjRXplDaYGANEBaezP8bj2dW/Y0FNhRJ+99
	u79lfh258ZsUzP69gdvSRN1D8tSUdr8gHJHADMiy6H/Py8JR8toQA948eOuu48rIQEPvY7pgIxW
	8DuY/cSFJytuksQ63BJ/eVFlkJXfLNaHR+/IgyblXCyX35QWkm7LcQCmRV2brgHYH768GNXqXqa
	Z5jpW6vKKooP7f7eHEv35G4j8qxwynoxIdxCfu9lUnuP4biBz4ycnf3VdCYnczCShGpdUuJEcg6
	/adV2a3Tbe8f9kY1WbqsY7ZfLvgSsB3izkGiROAn7T2VRaEo5XVpW
X-Google-Smtp-Source: AGHT+IFPRAfYJLDKk25+N7iDm8+Hpg6qgVmHdfpyo++Pf1C86ji266a+52NYms6z1shHPH8/RlHEYw==
X-Received: by 2002:a17:903:2290:b0:24c:d33d:4176 with SMTP id d9443c01a7336-2516e887c82mr188164505ad.15.1757445312681;
        Tue, 09 Sep 2025 12:15:12 -0700 (PDT)
Received: from localhost ([2804:14d:7e39:88d6:ba9:6a6e:c9a0:290f])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25a2a344a1bsm4992685ad.65.2025.09.09.12.15.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 12:15:11 -0700 (PDT)
From: Thiago Jung Bauermann <thiago.bauermann@linaro.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: Carlos O'Donell <carlos@redhat.com>,  linux-man@vger.kernel.org
Subject: Re: [PATCH] man/man2/sigaction.2: Update si_code list with Linux v6.16
In-Reply-To: <jjyin6xofibfjxs46dkhb7jg274tmhpyf37nu77fcuutglv63j@2l6bbcqdyjih>
	(Alejandro Colomar's message of "Tue, 9 Sep 2025 20:58:29 +0200")
References: <20250828210752.619435-1-thiago.bauermann@linaro.org>
	<66a84774-0c5b-4dc1-af25-1e6d35e3e5ef@redhat.com>
	<87h5xkgrly.fsf@linaro.org>
	<1131d940-b487-4ce4-8316-533cffbdc173@redhat.com>
	<87plc071y7.fsf@linaro.org>
	<pb4yns6tmw5x25tvflkgnyqwfkusthtrnd66il7e22adisk5in@4qzbdyda3ro2>
	<e42e4ca6-6e3e-4b5a-9028-0ccf578a2d66@redhat.com>
	<jjyin6xofibfjxs46dkhb7jg274tmhpyf37nu77fcuutglv63j@2l6bbcqdyjih>
User-Agent: mu4e 1.12.11; emacs 30.1
Date: Tue, 09 Sep 2025 16:15:09 -0300
Message-ID: <87a533a14y.fsf@linaro.org>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Alejandro Colomar <alx@kernel.org> writes:

> Hi Carlos,
>
> On Tue, Sep 09, 2025 at 02:26:10PM -0400, Carlos O'Donell wrote:
>> > So, all the things that Carlos said weren't in glibc are now in glibc?
>> 
>> Yes. https://sourceware.org/cgit/glibc/commit/?id=6f120faf649f03a261e3e64d5b5991030383c1b3
>
> Thanks!
>
>> > Would you mind adding "(since glibc X.Y)" to them in the patch?
>> 
>> You could write "(since glibc 2.43)" though it won't be released until 2026-02-01.
>
> Yep, that will work.  We can fix the page if the final version number
> ends up being different.

Thanks I just sent a v2 with that change, and also a fix to use .BR
where .B was used incorrectly in v1.
-- 
Thiago

