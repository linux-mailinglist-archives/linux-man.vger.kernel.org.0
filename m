Return-Path: <linux-man+bounces-1945-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D919D0303
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 11:51:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 28C77283686
	for <lists+linux-man@lfdr.de>; Sun, 17 Nov 2024 10:51:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E48582899;
	Sun, 17 Nov 2024 10:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b="bL9Msqhw"
X-Original-To: linux-man@vger.kernel.org
Received: from mail.helgefjell.de (mail.helgefjell.de [142.132.201.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE63983A17
	for <linux-man@vger.kernel.org>; Sun, 17 Nov 2024 10:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=142.132.201.35
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731840694; cv=none; b=ORswDdXygnhU+e9fXgBz98n5St2iC8FzcI6CXEE8mi9/151gPUxiA56WqXeWr3PqOAMPTyswarGqPpbWfNMLLCRZvbYvjZlBIjetmiK9sIyPQD4PA7ZE01hcBdYIRxPrslK6OXU3V5GvvIJG+BbLsWSP/a7e1edQJYTLGp0qlZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731840694; c=relaxed/simple;
	bh=w8kiIlZAFJ7y6J1nInFHJdoVVtXeKPRxaECD/gAbIcU=;
	h=Date:From:To:Cc:Subject:Message-ID:MIME-Version:Content-Type:
	 Content-Disposition; b=jkTxtUaOdFoypFxVyyT2me4LZSkNuJ4o8FvD9T2HFnStt/gyj1JuI047kMuoZr/7kFeRJfWSnBlR3GTJOhr2eY/CevdHkVzX+U1RyBex0wFgpn3H3m4Y1L45C6VzKfmp+0xrRGn/o3FbuO3gDCwVzPIdwqGHEe59IGt2/W/tJT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de; spf=pass smtp.mailfrom=helgefjell.de; dkim=pass (2048-bit key) header.d=helgefjell.de header.i=@helgefjell.de header.b=bL9Msqhw; arc=none smtp.client-ip=142.132.201.35
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=helgefjell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=helgefjell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=helgefjell.de;
	s=selector.helgefjell; t=1731840382;
	bh=p13ggcB1i1h6wqZb9Sdkwk5JGr6DDJLO8M6M3CjmoRo=;
	h=Date:From:To:Cc:Subject;
	b=bL9MsqhwpZklv4d8AL/k1XnSxiCu9PYVvYU9+2aKrxKAW8zwT1F0MpNzBEyckod1C
	 8HfPp/RtK7Gu5wKRhta5mhAv2k+zqToLtDFU/L8EqwtkAgIr6ZINAlIgJVrQhbcgCh
	 6umxoLKFyltOFqCNeVPeqq+VD4+f+j5z+Vwwx2s+hLtXghEakvolfz+hNEJ8EzwwCg
	 fYTXq46L8IdYdT+SItXqBZcj6lHSLainpwJOYYKzpei7mpJICQkmFYiC+24A6sSrAw
	 2bKeko9H6M9rblQKlAWLUDaZ/6g8YNgK6ttvrwray3cnYqBkPMpUWpYAT52Dzhy6Oh
	 zJJpW4AmvawwQ==
Original-Subject: Issue in man page mount_namespaces.7
Author: Helge Kreutzmann <debian@helgefjell.de>
Original-Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Received: from localhost (localhost [127.0.0.1])
  (uid 1002)
  by mail.helgefjell.de with local
  id 000000000002035A.000000006739C97E.003FC2FE; Sun, 17 Nov 2024 10:46:22 +0000
Date: Sun, 17 Nov 2024 10:46:22 +0000
From: Helge Kreutzmann <debian@helgefjell.de>
To: alx@kernel.org
Cc: mario.blaettermann@gmail.com, linux-man@vger.kernel.org
Subject: Issue in man page mount_namespaces.7
Message-ID: <ZznJfoZZNXyYl_K-@meinfjell.helgefjelltest.de>
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

Issue:    mount point → mount ?

"The propagation type assigned to a new mount depends on the propagation type "
"of the parent mount.  If the mount has a parent (i.e., it is a non-root "
"mount point) and the propagation type of the parent is B<MS_SHARED>, then "
"the propagation type of the new mount is also B<MS_SHARED>.  Otherwise, the "
"propagation type of the new mount is B<MS_PRIVATE>."

