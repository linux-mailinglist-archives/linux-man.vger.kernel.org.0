Return-Path: <linux-man+bounces-2857-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D179AA78C7
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 19:42:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 472581BC0150
	for <lists+linux-man@lfdr.de>; Fri,  2 May 2025 17:43:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D388A2566DE;
	Fri,  2 May 2025 17:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QOmrFvXS"
X-Original-To: linux-man@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A38255E30
	for <linux-man@vger.kernel.org>; Fri,  2 May 2025 17:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746207765; cv=none; b=LdYE+wfx+YhD5/rqgp/JqQ6SXl6d9SBNPTe/UAL6Us1w6SMUKZsrxWZmtyF34EViEjTq1O/GET7gsRtuascfAGG4zowKulmoh9Sqg9Aiz+rs9SjLfQ7OtzOeHBDCjoYKYthk3+E3sRF9SyhoW9UtgKR8gOneQ9sBXjRkh+3vego=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746207765; c=relaxed/simple;
	bh=IfbGUZdFUgFsAung9ns2Llx1RMom+l0iTgko/JU5Swk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GSjm+bBPYS/2M0/fKn4dD5+vY1KNl5PPl5JwNuaNojD84g5+SlM57CZ96rbEYPnfzizncQtTk8vlby986Y0x53gZzUKfph6BgJlxbvjCXwKpfvKZv0GP2dgRAz62FUUS0vdFPGNvSc29V4SAiYJwN16xamK0BpSYBZOhbwyg/18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QOmrFvXS; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-6064d4c14ebso574486eaf.2
        for <linux-man@vger.kernel.org>; Fri, 02 May 2025 10:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1746207762; x=1746812562; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cZyFueKKE42V0XFTLBB+vMnwgWyNkwvMwZRRZWUnw4=;
        b=QOmrFvXSSXejj4DF/kdAtbVw0CFqeZygqKbLsTOFAq0PTkck0YEiMH6reWd0b1fh4x
         Q5k8OsMDOdjEMHoUYVjcioqy4rlrYQxjzBHpdOB3NIWQqqHHCnSjvSNuiL6rbEC55KLB
         hmf5fL16e4vXxXqIWe5oOJsVpfmwzT4CXMcHnuVBr6L4/aCOMHnGjqZs5OyCWgN1iwqV
         FqvVI6eJ06+WcG2dkwAQeatPLKjGWc09FkVmxtdW416f4jfERRMyKFmFqikhXZFo6X1o
         VsBNfg1FLx0VM/sKmz6L87Obqjp8uI1lrgRq1MBNJvysCAAYoejQkolNL2si2VbsrLeD
         bZUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746207762; x=1746812562;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/cZyFueKKE42V0XFTLBB+vMnwgWyNkwvMwZRRZWUnw4=;
        b=M3ylXzPGoDSxIxBMuJtMsghSMUzx8D5ltGGXEFVEse+b7vina/Vqff6T9UN47XHDYI
         euImlk7QxrPb+JLy867DJZkmaJ4zC7EdJxOsjdRHa+xgDWtGW6hu6vlcJfvpLwQFIjmC
         ED10WKTDRfq8fcQyD0jodZrKGcfkvimALeDsYlJDznAvsM85lABoHw9dkSa8MnJAq30H
         SVjD1jFDVQ0UCwkONoT/DK8pUfKBIiUJD/tvboe/AwC4bpukqGEI5oteO3Ss9snH74ub
         G66jPB/vFyiAjSBjvveWw+4+oQHxCvLigzVF8dKTTvPkguFNj727Lj6Y6WFKZoF4V4/m
         L7Cw==
X-Forwarded-Encrypted: i=1; AJvYcCVY/0xIHcvaL8Gv4u/pYt1GO+p4pfCprQtU+medDcpzHNtG0U9PIohjjW7gAhaDfs2V3mt+D/PeF0Y=@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5ClvaimYP2dlM1Z8l9wWOBxL/qCg09xgoxVjMi0Za6WwAL8rJ
	uc/moSgP1Aq612bRY5BleX7OiQ79i71mKNk9VerulFhOo4SEMupmMC00QZLAHtuiEHkoly/8ITH
	TepkdNcOHy/K0jE4z8ktsXxzp4Vg=
X-Gm-Gg: ASbGnctIIKFFjD2n9NCK1QW+qUL9xesMjfMTFKrPxvCsgHvXhkX4uHe9NNjjyijecnw
	4Lepl/M0OqjvuOTikmMSkgUob6wOW7xaTBAmlcraTHcChCxe1oyJQ7lzI42tGZYZ3IDSnxEKAmT
	dpMWFGsQUBiT3/2wKOSVmL8bFzOsw39IugnG3Imxv6gPMa2tQHaSQb8Fyr
X-Google-Smtp-Source: AGHT+IHi7423dvoKYqylr5tnxPY2FUSlGwOzVCtTLs8wCRhUycD3icJNCkwqJofwDfal29YvoHZAdyLKnwjqtdNVpzI=
X-Received: by 2002:a05:6820:3088:b0:607:cc1a:572f with SMTP id
 006d021491bc7-607ee83667amr2212800eaf.6.1746207762089; Fri, 02 May 2025
 10:42:42 -0700 (PDT)
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <dbczpry2ukcht3d2pw4b2l7yla63eetfprfpblhvhwj2dpalvv@ba4itgqked3d>
 <20250502120139.yqstcq32hdtagozl@illithid> <aBTDZiUVotN_80RM@starship>
In-Reply-To: <aBTDZiUVotN_80RM@starship>
From: Dave Kemper <saint.snit@gmail.com>
Date: Fri, 2 May 2025 12:42:30 -0500
X-Gm-Features: ATxdqUE5AjEeUZCIRwc8FT8ZzW2aWjaJtP7t9MhlrvPf6WFbaFSD_MVEutGZCIg
Message-ID: <CACRhBXOPUdngLptS-oGqkeCZ=R=as8Fhkf6jSuznC+TMbbQx0w@mail.gmail.com>
Subject: Re: Paragraphs formatted differently depending on previous ones
To: Martin Lemaire <contact@martinlemaire.fr>
Cc: Groff <groff@gnu.org>, linux-man@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 2, 2025 at 8:07=E2=80=AFAM Martin Lemaire <contact@martinlemair=
e.fr> wrote:
> Off-topic to Alejandro's initial question but related to the subject of
> justifying text set in monospace, do we owe this typographic gesture to
> the early *roff formaters or was it already a thing in previous
> publication tool, either software or hardware ?

Branden addressed the conceptual basis for such adjustment.  The
origin of the specific algorithm used for monospace fonts was revealed
by its inventor in a post a few years ago:

http://lists.gnu.org/r/groff/2018-06/msg00044.html

Other than starting with a different adjustment "direction," this
algorithm remains unchanged in groff today.

