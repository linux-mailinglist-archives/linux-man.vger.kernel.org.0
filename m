Return-Path: <linux-man+bounces-3683-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E42F6B33102
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 16:52:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AD392442554
	for <lists+linux-man@lfdr.de>; Sun, 24 Aug 2025 14:50:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A7012DFA28;
	Sun, 24 Aug 2025 14:49:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="eMB5XrbB"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AADCD2DFA22
	for <linux-man@vger.kernel.org>; Sun, 24 Aug 2025 14:49:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756046984; cv=none; b=VvVeNuthcEalgW5ITukHlF+QKcCeSIASoUyl5PkksP5lLKZD04Y6XQGPbmrDiVjb7KRHGX/olGLbBGJ3vrKhujruVB7WE5fQvpOsnRvzP5LewcjqnHCWt+Aetr5atUKWaEiy+V23fXwjdNL/DmYswb4oGJvPLs0f9pcEciVg/Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756046984; c=relaxed/simple;
	bh=wb5JE8qkfFgc2Ut9nuEI3t1QcWT66bI2QqoCkASp90k=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=YwREFImBd4j4J8Q7QfRT5gngj7jN74qCDxUXCjwg+4WWxGmDnPOAf6FQ0qKqv/1MqipfsmUxUsxyHggmVhK3P/lj3RZkBXLbaCa05Pi7y8GurUWJW6Mcb4MB9Tem6Khj5b5FcfWOMjUnZtPyt5SKY8GIfO3fjIS7S842zA11vRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=eMB5XrbB; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1756046931;
	bh=6Jd1kpn9S/qAgJ6IQeW+wP7Lky0XV9s8Tg6ugUDEdtk=;
	h=Date:From:To:Cc:Subject;
	b=eMB5XrbB5AKxYb3sYY4xmJU5hxzZ3YWUC1z9sN6hY0r3ufyULkhzy72Ok9B1Vos3y
	 KE1nuRkkcCTdtet9ZtgQ/jxIwBUF0iW2k/R/krfD+VMM6ibaRlOta4A60ea7EHkDYU
	 VssloTULnoJAS95/f7Y5rk6GNapMZDmhEYySk/OlzV9zr5VJsbrELY5t/RhhQKz+a+
	 18JTg/ct12i7O/o6veKWRC437lLb2Tmzb90yOaG0oVigTuKQFHpD5oldIMVMIq9aDc
	 FfyE6f6jtQzgCwTe2ok/8rIMhq9gMjNYRvz3Z9EfzqdErzUScdYVZfDpjGQ/MR/YEq
	 a81Fy5uH4YXzg==
Original-Subject: Issue in man page resolver.3
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 0000000000021789.0000000068AB2653.001398BE; Sun, 24 Aug 2025 14:48:51 +0000
Date: Sun, 24 Aug 2025 14:48:51 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page resolver.3
Message-ID: <aKsmU2345KQ8MH01@meinfjell.helgefjelltest.de>
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

Issue:    B<…>int anslen → B<…int> I<anslen>

"B<int res_nquery(>int anslen;\n"
"B<           res_state >I<statep>B<,>\n"
"B<           const char *>I<dname>B<, int >I<class>B<, int >I<type>B<,>\n"
"B<           unsigned char >I<answer>B<[>I<anslen>B<], int >I<anslen>B<);>\n"

"B<int res_nsearch(>int anslen;\n"
"B<           res_state >I<statep>B<,>\n"
"B<           const char *>I<dname>B<, int >I<class>B<, int >I<type>B<,>\n"
"B<           unsigned char >I<answer>B<[>I<anslen>B<], int >I<anslen>B<);>\n"

"B<int res_nquerydomain(>int anslen;\n"
"B<           res_state >I<statep>B<,>\n"
"B<           const char *>I<name>B<, const char *>I<domain>B<,>\n"
"B<           int >I<class>B<, int >I<type>B<, unsigned char >I<answer>B<[>I<anslen>B<],>\n"
"B<           int >I<anslen>B<);>\n"

"B<[[deprecated]]>\n"
"B<int res_query(>int anslen;\n"
"B<           const char *>I<dname>B<, int >I<class>B<, int >I<type>B<,>\n"
"B<           unsigned char >I<answer>B<[>I<anslen>B<], int >I<anslen>B<);>\n"

"B<[[deprecated]]>\n"
"B<int res_search(>int anslen;\n"
"B<           const char *>I<dname>B<, int >I<class>B<, int >I<type>B<,>\n"
"B<           unsigned char >I<answer>B<[>I<anslen>B<], int >I<anslen>B<);>\n"

"B<[[deprecated]]>\n"
"B<int res_querydomain(>int anslen;\n"
"B<           const char *>I<name>B<, const char *>I<domain>B<,>\n"
"B<           int >I<class>B<, int >I<type>B<, unsigned char >I<answer>B<[>I<anslen>B<],>\n"
"B<           int >I<anslen>B<);>\n"

