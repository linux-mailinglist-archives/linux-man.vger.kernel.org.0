Return-Path: <linux-man+bounces-1293-lists+linux-man=lfdr.de@vger.kernel.org>
X-Original-To: lists+linux-man@lfdr.de
Delivered-To: lists+linux-man@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 090CA91BD4C
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 13:22:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE6111F2310F
	for <lists+linux-man@lfdr.de>; Fri, 28 Jun 2024 11:22:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F5C2155C96;
	Fri, 28 Jun 2024 11:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b="EktAs/8+";
	dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b="dyaPRCrP"
X-Original-To: linux-man@vger.kernel.org
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de [81.169.146.220])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DB161865A
	for <linux-man@vger.kernel.org>; Fri, 28 Jun 2024 11:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=81.169.146.220
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719573760; cv=pass; b=SrZZh5CSLuWt+CW1yB12MkLPPI8qI7gyYlMtzDNnzvPDRF/8X9Y5EpVAfPZ6sj87P4MmDwlNBc1UKw+Iux3vZiIlc+oi2WFkaGXQWM6ZnPz6UdGTGSBnxRumm8WVX1F58INpXAsPKZffyJrcLHVtThUhCdSwdxQG+h+cq5+1zwM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719573760; c=relaxed/simple;
	bh=CsbAeC7MkJCiJugzgZGVM0AP0P1m/Vezbj/RO7uO4xo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=CwWVMO9KK4ln1Fh19JgC3isGx7xxBhBWnjRCDcumGbDZvCEipe127Xajtk7un0pxC+oLa1SEGoUIbt1zSOJc+fFzaCBNDjUNzJXcBbxxp3MVUT9FYXx7Qo/x4YfkzcNhM9/DMzNYwHYZ44dLBgKAkGQiCMijhXfO/adV72K9MkE=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org; spf=none smtp.mailfrom=clisp.org; dkim=pass (2048-bit key) header.d=clisp.org header.i=@clisp.org header.b=EktAs/8+; dkim=permerror (0-bit key) header.d=clisp.org header.i=@clisp.org header.b=dyaPRCrP; arc=pass smtp.client-ip=81.169.146.220
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=clisp.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=clisp.org
ARC-Seal: i=1; a=rsa-sha256; t=1719573027; cv=none;
    d=strato.com; s=strato-dkim-0002;
    b=BGcGWZj1WhxVLPnnhEaJw2jIZ87cTKlwHLDXfINDULNmeP75Wab5yRIDQ+8ghBQ8Nz
    97APcorhRzNu9FNAIcaZGTHYQpO8d92+0i3+8llPsndmG/D4p9cNT5xwDkxDsynkq+ma
    TVONMFUOuy4chgyIxO4RHugPeU2sZGcO05V9PnJZkPkcIHcNi+dbqJQ4DZonHNK1QqIl
    KONT6ILL4J7RLB75HKgEpk2xHQOb2Ez5emdUH8vYfx/KuToEhC2aN6DOeBCmZQ5tCLSY
    MaxU38+VonCgMeXonrqVj+69hmDS+Xvf1QRlmHYHk8a5Wqp+5Hv5sY8gsrdvZzYEgdPv
    HmOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; t=1719573027;
    s=strato-dkim-0002; d=strato.com;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=CsbAeC7MkJCiJugzgZGVM0AP0P1m/Vezbj/RO7uO4xo=;
    b=YFL4qu9suun31tXS623SYxahRhGjUNGIhwDTG/qzLipxgG8DLbGY80GXZup75POHEX
    Kh7OLg0PIKapcv9hKtaAWHryhjDydYFSwZJg8KfpDZ6Zo69/UEgcskjJxr0qTg5dFnut
    RZeQmgULChOXBzJ4LY7h0zG+KtxIJxnT1ZTZ3IAoTINKhbbgVwpIS6cNMLHYqyvWUVtk
    K3owedA7vXmgrOM5UsxrMwf946CyAeGppG7x9vZvCR/g3JdXHY4fFIiqE/ws4S1u6OvS
    NWIHY5yT8196Qv0XDWXz2gcCWkW/b0zhEXe6yNhGHSfU2XI1cdhrVxBZM6ZVIT4iuQwJ
    /rxA==
ARC-Authentication-Results: i=1; strato.com;
    arc=none;
    dkim=none
X-RZG-CLASS-ID: mo00
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1719573027;
    s=strato-dkim-0002; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=CsbAeC7MkJCiJugzgZGVM0AP0P1m/Vezbj/RO7uO4xo=;
    b=EktAs/8+IjuaULV2NWf82FF0WlKd3BLDVO9JQV17KKw3TGN9NpR7xtkCSZXEasnQY1
    0Ya1FFElpqs+wRTmxcWFbZpbUlDpyT0R6k3/ZX6HH8g7Cm3ToM5UWbx6tyExeBv+Izd+
    bPdX9iUivi77W7UAWwbu492TPg4nV43skfsLegOp7eOwMv3XYY4Kn+uQ26eJH/qyPuDc
    NoP7dDxT9K+JysXGeQAvdwr3o/2alFTMny8OKCMAf6Ke9+u27EzNvne06J7z4iZQNJDz
    6ddA9I7vPYa+3IODe8p9m5N8wSa2ak3npj2gD1zCbm5h9GinqZI6cgrq48nohzSE9cdz
    g7uQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; t=1719573027;
    s=strato-dkim-0003; d=clisp.org;
    h=References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Cc:Date:
    From:Subject:Sender;
    bh=CsbAeC7MkJCiJugzgZGVM0AP0P1m/Vezbj/RO7uO4xo=;
    b=dyaPRCrPnSuEzeXIMAZ+n3er5m4qx6+NRCBNZtuwPa1QeZT6kVUwv0nOEy5AhgjbUy
    OpGjCNCROrvaApwnsqCA==
X-RZG-AUTH: ":Ln4Re0+Ic/6oZXR1YgKryK8brlshOcZlIWs+iCP5vnk6shH0WWb0LN8XZoH94zq68+3cfpPD1KcccAaO63yQU6el7azvLdTwvA=="
Received: from nimes.localnet
    by smtp.strato.de (RZmta 50.5.0 AUTH)
    with ESMTPSA id N0957e05SBARyID
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256 bits))
	(Client did not present a certificate);
    Fri, 28 Jun 2024 13:10:27 +0200 (CEST)
From: Bruno Haible <bruno@clisp.org>
To: Alejandro Colomar <alx@kernel.org>
Cc: linux-man@vger.kernel.org
Subject: Re: setcontext was removed in POSIX.1-2008
Date: Fri, 28 Jun 2024 13:10:27 +0200
Message-ID: <9340430.UesdLuknzO@nimes>
In-Reply-To: <qhi5oglxihr5ztjpp34bzgqh26l7nhegoja7hxj3xue2jrdzxz@34vhgndb5sql>
References: <28696710.B0YPrGVBQ4@nimes> <qhi5oglxihr5ztjpp34bzgqh26l7nhegoja7hxj3xue2jrdzxz@34vhgndb5sql>
Precedence: bulk
X-Mailing-List: linux-man@vger.kernel.org
List-Id: <linux-man.vger.kernel.org>
List-Subscribe: <mailto:linux-man+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-man+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Alejandro Colomar wrote:
> This was fixed in

Thanks!

I had looked at "gitk man/man3/getcontext.3", but the move and move-back
of the file fooled me.

Bruno




