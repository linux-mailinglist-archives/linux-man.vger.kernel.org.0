Return-Path: <linux-man+bounces-3629-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A14B330C8
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:49:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 16FAA203DA9
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:49:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B0142DF714;
	Sun, 24 Aug 2025 14:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="j9LjjT8+"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053712DE6EF
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046957; cv=none; b=Sct7ftocSmrtbULJdiYFIZELXqsFXbpFyGLpMikFQ8DsylOiwdi5S1UgFJ0sUi4v+SpZtAFPMlv/PgJnVi+PygBuCVSZbuVhTA8GO7JNowP/RG1eqbhqlt9gq7pbzAA9baxkOPM9K83ROg4/gNCeZMQfjCf+nwOmT2Dc3OOxstg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046957; c=relaxed/simple;
	bh=mq21L9HP6xPNNht2woKMM+RX9/BkrKYEUsqTJ7gIHgU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=R9WXDWbjxi5t52pT7SP2DhPDuV8itTnJkga0li24SuyGqnSiS2n5nnjknRYxXVCL+jGjwEH6wsucARo7LxfG1O4yUUubJaw6+xsNbbG/Tcyp0Lu8rq7nDuZxTuwGquaVM7TKbcUushJOJRPuw9Rwz1CCcls3F2WMewZ963BWv9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=j9LjjT8+; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046923;
	bh=bo39zwPYRzOJ+XO2/wKDUL7hW11dK185h6Qd3KBtLzA=;
	h=Date:From:To:Cc:Subject;
	b=j9LjjT8+eNdR9jBtnzqSnvpepkiI6kJTRPcCpuzfxC7s244IjhmCZL8XSc9wU6XJ4
	 UZN2Bc26u71JHDAMdVdKsNEPyfLlWCB0DWdNBmoMHbBLznOscyyQdjEv0R33WV77yl
	 1F8BaiGj62D9A9PsquMz9gO0QAdK6jHeMSMfNlK5ifc8qmID08C+tC2TL8l3JNVKe1
	 xiZrSDb8TXtlZ/+GlrDZa47kQxPARx3eQ64HaqDZaY8AITs0rwL0Ot8Cl8yZRQ0Ubl
	 FqKvDquZ+u8QPQt1aL8Pukv3fnvy45OPnI5T7lFyGorvZUqFTaaPGGF/tqhHX8t9ZS
	 N44wudLijzfxg==
Original-Subject: Issue in man page bcmp.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021577.0000000068AB264B.00139376; Sun, 24 Aug 2025 14:48:43 +0000
Date: Sun, 24 Aug 2025 14:48:43 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page bcmp.3
Message-ID: <aKsmS2r2fkm5J-jH@meinfjell.helgefjelltest.de>
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

Issue:    B<…>size_t n → B<…size_t> I<n>

"B<[[deprecated]] int bcmp(>size_t n;\n"
"B<                        const void >I<s1>B<[>I<n>B<], const void >I<s2>B<[>I<n>B<], size_t >I<n>B<);>\n"

